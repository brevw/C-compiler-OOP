package sem;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

public class Scope {
	private Optional<Scope> outer;
	private Map<String, Symbol> symbolTable = new HashMap<>();

	public Scope(Scope outer) {
		this.outer = Optional.ofNullable(outer);
	}

	public Scope() { this(null); }

	public Optional<Symbol> lookup(String name) {
        Optional<Symbol> symbol = lookupCurrent(name);
        if (!symbol.isPresent()) {
            Optional<Scope> outerScope = outer;
            while (symbol.isEmpty() && outerScope.isPresent()) {
                symbol = outerScope.get().lookupCurrent(name);
                outerScope = outerScope.get().outer;
            }
        }
		return symbol;
	}

	public Optional<Symbol> lookupCurrent(String name) {
		return Optional.ofNullable(symbolTable.getOrDefault(name, null));
	}

	public void put(Symbol sym) {
		symbolTable.put(sym.name, sym);
	}
}
