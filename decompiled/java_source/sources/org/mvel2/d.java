package org.mvel2;

import java.io.Serializable;
import java.util.Map;
import org.mvel2.compiler.CompiledAccExpression;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.compiler.ExpressionCompiler;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.CachingMapVariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f71961a = Boolean.getBoolean("mvel2.debug.fileoutput");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static String f71962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static boolean f71963c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static boolean f71964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static boolean f71965e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f71966f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f71967g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static boolean f71968h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f71969i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static boolean f71970j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static boolean f71971k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static boolean f71972l;

    static {
        f71962b = System.getProperty("mvel2.debugging.file") == null ? "mvel_debug.txt" : System.getProperty("mvel2.debugging.file");
        f71963c = Boolean.getBoolean("mvel2.advanced_debugging");
        f71964d = Boolean.getBoolean("mvel2.weak_caching");
        f71965e = Boolean.getBoolean("mvel2.disable.jit");
        f71966f = Boolean.getBoolean("mvel2.invoked_meth_exceptions_bubble");
        f71967g = Boolean.getBoolean("mvel2.compiler.allow_naked_meth_calls");
        f71968h = Boolean.getBoolean("mvel2.compiler.allow_override_all_prophandling");
        f71969i = Boolean.getBoolean("mvel2.compiler.allow_resolve_inner_classes_with_dotnotation");
        f71970j = Boolean.getBoolean("mvel2.compiler.support_java_style_class_literals");
        f71971k = Boolean.getBoolean("mvel2.compiler.allocate_type_literals_to_shared_symbol_table");
        f71972l = true;
        if (System.getProperty("mvel2.optimizer") != null) {
            f71972l = Boolean.getBoolean("mvel2.optimizer");
        }
    }

    public static boolean A() {
        return f71961a;
    }

    public static void B(Object obj, String str, Object obj2) {
        g.z(obj, str, obj2);
    }

    public static void a(String str, ParserContext parserContext) {
        b(str.toCharArray(), parserContext);
    }

    public static void b(char[] cArr, ParserContext parserContext) {
        ExpressionCompiler expressionCompiler = new ExpressionCompiler(cArr, parserContext);
        expressionCompiler.setVerifyOnly(true);
        expressionCompiler.compile();
    }

    public static Class c(char[] cArr, ParserContext parserContext) {
        ExpressionCompiler expressionCompiler = new ExpressionCompiler(cArr, parserContext);
        expressionCompiler.setVerifyOnly(true);
        expressionCompiler.compile();
        return expressionCompiler.getReturnType();
    }

    public static Serializable d(String str) {
        return e(str, null, null, null);
    }

    public static Serializable e(String str, Map map, Map map2, String str2) {
        return f(str, new ParserContext((Map<String, Object>) map, (Map<String, k10.b>) map2, str2));
    }

    public static Serializable f(String str, ParserContext parserContext) {
        return m.v0(new ExpressionCompiler(str, parserContext).compile());
    }

    public static Serializable g(char[] cArr, int i11, int i12, ParserContext parserContext) {
        return m.v0(new ExpressionCompiler(cArr, i11, i12, parserContext)._compile());
    }

    public static Serializable h(char[] cArr, ParserContext parserContext) {
        return m.v0(new ExpressionCompiler(cArr, parserContext).compile());
    }

    public static Serializable i(String str, Class cls, ParserContext parserContext) {
        return new CompiledAccExpression(str.toCharArray(), cls, parserContext);
    }

    public static Serializable j(char[] cArr) {
        return new CompiledAccExpression(cArr, Object.class, new ParserContext());
    }

    public static Serializable k(char[] cArr, int i11, int i12, ParserContext parserContext) {
        return new CompiledAccExpression(cArr, i11, i12, Object.class, parserContext);
    }

    public static Serializable l(char[] cArr, Class cls, ParserContext parserContext) {
        return new CompiledAccExpression(cArr, cls, parserContext);
    }

    public static Serializable m(char[] cArr, ParserContext parserContext) {
        return new CompiledAccExpression(cArr, Object.class, parserContext);
    }

    public static Object n(String str, Object obj, VariableResolverFactory variableResolverFactory) {
        return new MVELInterpretedRuntime(str, obj, variableResolverFactory).parse();
    }

    public static Object o(String str, Object obj, VariableResolverFactory variableResolverFactory, Class cls) {
        return b.b(new MVELInterpretedRuntime(str, obj, variableResolverFactory).parse(), cls);
    }

    public static Object p(String str, Map map) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = new CachingMapVariableResolverFactory(map);
        try {
            return new MVELInterpretedRuntime(str, (Object) null, cachingMapVariableResolverFactory).parse();
        } finally {
            cachingMapVariableResolverFactory.externalize();
        }
    }

    public static Object q(char[] cArr, int i11, int i12, Object obj, VariableResolverFactory variableResolverFactory) {
        return new MVELInterpretedRuntime(cArr, i11, i12, obj, variableResolverFactory).parse();
    }

    public static Object r(char[] cArr, int i11, int i12, Object obj, VariableResolverFactory variableResolverFactory, Class cls) {
        return b.b(new MVELInterpretedRuntime(cArr, i11, i12, obj, variableResolverFactory).parse(), cls);
    }

    public static Object s(char[] cArr, Object obj, VariableResolverFactory variableResolverFactory) {
        return new MVELInterpretedRuntime(cArr, obj, variableResolverFactory).parse();
    }

    public static Object t(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return ((ExecutableStatement) obj).getValue(obj2, variableResolverFactory);
    }

    public static Object u(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Class cls) {
        return b.b(t(obj, obj2, variableResolverFactory), cls);
    }

    public static Object v(Object obj, Map map) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = new CachingMapVariableResolverFactory(map);
        try {
            return ((ExecutableStatement) obj).getValue(null, cachingMapVariableResolverFactory);
        } finally {
            cachingMapVariableResolverFactory.externalize();
        }
    }

    public static void w(Serializable serializable, Object obj, VariableResolverFactory variableResolverFactory, Object obj2) {
        ((CompiledAccExpression) serializable).setValue(obj, obj, variableResolverFactory, obj2);
    }

    public static String x() {
        return f71962b;
    }

    public static Object y(String str, Object obj) {
        return g.k(str, obj);
    }

    public static boolean z() {
        return f71963c;
    }
}
