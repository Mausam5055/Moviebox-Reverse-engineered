package j10;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.mvel2.ast.LineLabel;
import org.mvel2.compiler.CompiledExpression;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65706b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map f65705a = new HashMap();

    public int a(LineLabel lineLabel, VariableResolverFactory variableResolverFactory, CompiledExpression compiledExpression) {
        if (this.f65706b == 1 || b(lineLabel)) {
            throw new RuntimeException("no debugger registered to handle breakpoint");
        }
        return 0;
    }

    public boolean b(LineLabel lineLabel) {
        return this.f65705a.containsKey(lineLabel.getSourceFile()) && ((Set) this.f65705a.get(lineLabel.getSourceFile())).contains(Integer.valueOf(lineLabel.getLineNumber()));
    }
}
