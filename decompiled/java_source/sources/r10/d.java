package r10;

import java.util.Map;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.res.Node;
import org.mvel2.util.g;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f74030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f74031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Node f74032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f74033d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f74034e;

    public d(char[] cArr, c cVar, Node node, String str) {
        this.f74030a = cArr;
        this.f74031b = cVar;
        this.f74032c = node;
        this.f74033d = str;
    }

    public static Object a(String str, Object obj, VariableResolverFactory variableResolverFactory) {
        return d(b.f(str), obj, variableResolverFactory);
    }

    public static Object b(String str, Map map) {
        return d(b.f(str), null, new MapVariableResolverFactory(map));
    }

    public static Object d(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory) {
        return f(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringBuilder(), obj, variableResolverFactory, null);
    }

    public static Object e(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory, c cVar) {
        return f(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringBuilder(), obj, variableResolverFactory, cVar);
    }

    public static Object f(Node node, char[] cArr, StringBuilder sb2, Object obj, VariableResolverFactory variableResolverFactory, c cVar) {
        return new d(cArr, cVar, node, ".").c(sb2, obj, variableResolverFactory);
    }

    public Object c(StringBuilder sb2, Object obj, VariableResolverFactory variableResolverFactory) {
        return g(new t10.a(sb2), obj, variableResolverFactory);
    }

    public Object g(s10.c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        return this.f74032c.eval(this, cVar, obj, variableResolverFactory);
    }

    public c h() {
        return this.f74031b;
    }

    public g i() {
        if (this.f74034e == null) {
            g gVar = new g();
            this.f74034e = gVar;
            gVar.q(this.f74033d);
        }
        return this.f74034e;
    }

    public char[] j() {
        return this.f74030a;
    }

    public void k(c cVar) {
        this.f74031b = cVar;
    }
}
