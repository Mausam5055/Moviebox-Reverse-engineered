package r10;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.res.CodeNode;
import org.mvel2.templates.res.CommentNode;
import org.mvel2.templates.res.CompiledCodeNode;
import org.mvel2.templates.res.CompiledDeclareNode;
import org.mvel2.templates.res.CompiledEvalNode;
import org.mvel2.templates.res.CompiledExpressionNode;
import org.mvel2.templates.res.CompiledForEachNode;
import org.mvel2.templates.res.CompiledIfNode;
import org.mvel2.templates.res.CompiledIncludeNode;
import org.mvel2.templates.res.CompiledNamedIncludeNode;
import org.mvel2.templates.res.CompiledTerminalExpressionNode;
import org.mvel2.templates.res.DeclareNode;
import org.mvel2.templates.res.EndNode;
import org.mvel2.templates.res.EvalNode;
import org.mvel2.templates.res.ExpressionNode;
import org.mvel2.templates.res.ForEachNode;
import org.mvel2.templates.res.IfNode;
import org.mvel2.templates.res.IncludeNode;
import org.mvel2.templates.res.NamedIncludeNode;
import org.mvel2.templates.res.Node;
import org.mvel2.templates.res.TerminalExpressionNode;
import org.mvel2.templates.res.TerminalNode;
import org.mvel2.templates.res.TextNode;
import org.mvel2.util.g;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Map f74019k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f74020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f74021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74022c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f74023d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f74024e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f74025f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f74026g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f74027h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map f74028i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ParserContext f74029j;

    static {
        HashMap map = new HashMap();
        f74019k = map;
        map.put("if", 1);
        map.put("else", 2);
        map.put("elseif", 2);
        map.put(TtmlNode.END, 10);
        map.put("foreach", 3);
        map.put("includeNamed", 51);
        map.put("include", 50);
        map.put("comment", 52);
        map.put("code", 53);
        map.put("eval", 55);
        map.put("declare", 54);
        map.put("stop", 70);
    }

    public b(CharSequence charSequence, boolean z10, ParserContext parserContext) {
        this.f74027h = false;
        char[] charArray = charSequence.toString().toCharArray();
        this.f74020a = charArray;
        this.f74021b = charArray.length;
        this.f74027h = z10;
        this.f74029j = parserContext;
    }

    private char[] a() {
        int i11 = this.f74023d - this.f74022c;
        char[] cArr = new char[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            cArr[i12] = this.f74020a[this.f74022c + i12];
        }
        return cArr;
    }

    private int b() {
        try {
            ParserContext parserContext = new ParserContext();
            char[] cArr = this.f74020a;
            int i11 = this.f74023d;
            this.f74022c = i11;
            this.f74023d = m.e(cArr, i11, this.f74021b, '{', parserContext);
            this.f74025f += parserContext.getLineCount();
            int i12 = this.f74022c + 1;
            this.f74022c = this.f74023d + 1;
            return i12;
        } catch (CompileException e11) {
            e11.setLineNumber(this.f74025f);
            e11.setColumn((this.f74023d - this.f74026g) + 1);
            throw e11;
        }
    }

    private int c() {
        int i11 = this.f74023d + 1;
        this.f74023d = i11;
        while (true) {
            int i12 = this.f74023d;
            if (i12 == this.f74021b || !m.c0(this.f74020a[i12])) {
                break;
            }
            this.f74023d++;
        }
        int i13 = this.f74023d;
        if (i13 == this.f74021b || this.f74020a[i13] != '{') {
            return -1;
        }
        return i11;
    }

    public static CompiledTemplate f(String str) {
        return new b(str, true, ParserContext.create()).d();
    }

    public static CompiledTemplate g(String str, ParserContext parserContext) {
        return new b(str, true, parserContext).d();
    }

    private boolean h(char c11) {
        int i11 = this.f74023d;
        return i11 != this.f74021b && this.f74020a[i11 + 1] == c11;
    }

    private Node i(Node node) {
        int end = node.getEnd();
        int end2 = this.f74024e;
        if (end > end2) {
            end2 = node.getEnd();
        }
        int i11 = this.f74022c;
        if (end2 >= i11) {
            return node;
        }
        int i12 = i11 - 1;
        this.f74024e = i12;
        TextNode textNode = new TextNode(end2, i12);
        node.next = textNode;
        return textNode;
    }

    public CompiledTemplate d() {
        return new CompiledTemplate(this.f74020a, e(null, new g()));
    }

    public Node e(Node node, g gVar) {
        Node compiledIfNode;
        Node terminus;
        this.f74025f = 1;
        Node textNode = node == null ? new TextNode(0, 0) : node;
        Node node2 = textNode;
        while (true) {
            try {
                int i11 = this.f74023d;
                if (i11 >= this.f74021b) {
                    if (!gVar.g()) {
                        CompileException compileException = new CompileException("unclosed @" + ((Node) gVar.k()).getName() + "{} block. expected @end{}", this.f74020a, this.f74023d);
                        compileException.setColumn(this.f74023d - this.f74026g);
                        compileException.setLineNumber(this.f74025f);
                        throw compileException;
                    }
                    int i12 = this.f74022c;
                    char[] cArr = this.f74020a;
                    if (i12 < cArr.length) {
                        TextNode textNode2 = new TextNode(i12, cArr.length);
                        textNode.next = textNode2;
                        textNode = textNode2;
                    }
                    textNode.next = new EndNode();
                    Node next = node2;
                    while (next.getLength() == 0 && (next = next.getNext()) != null) {
                    }
                    if (next == null || next.getLength() != this.f74020a.length - 1) {
                        return node2;
                    }
                    if (next instanceof ExpressionNode) {
                        return this.f74027h ? new CompiledTerminalExpressionNode(next, this.f74029j) : new TerminalExpressionNode(next);
                    }
                    return next;
                }
                char c11 = this.f74020a[i11];
                if (c11 == '\n') {
                    this.f74025f++;
                    this.f74026g = i11 + 1;
                } else if (c11 == '$' || c11 == '@') {
                    if (h(c11)) {
                        int i13 = this.f74023d + 1;
                        this.f74023d = i13;
                        this.f74022c = i13;
                        textNode = i(textNode);
                        textNode.setEnd(textNode.getEnd() + 1);
                        int i14 = this.f74023d + 1;
                        this.f74023d = i14;
                        this.f74024e = i14;
                        this.f74022c = i14;
                    } else {
                        int iC = c();
                        if (iC != -1) {
                            this.f74022c = iC;
                            Map map = f74019k;
                            String str = new String(a());
                            Integer num = (Integer) map.get(str);
                            int iIntValue = num == null ? 0 : num.intValue();
                            if (iIntValue == 1) {
                                Node nodeI = i(textNode);
                                compiledIfNode = this.f74027h ? new CompiledIfNode(this.f74022c, str, this.f74020a, b(), this.f74022c, this.f74029j) : new IfNode(this.f74022c, str, this.f74020a, b(), this.f74022c);
                                nodeI.next = compiledIfNode;
                                gVar.q(compiledIfNode);
                                compiledIfNode.setTerminus(new TerminalNode());
                            } else if (iIntValue != 2) {
                                if (iIntValue != 3) {
                                    if (iIntValue != 10) {
                                        switch (iIntValue) {
                                            case 50:
                                                Node nodeI2 = i(textNode);
                                                if (this.f74027h) {
                                                    int i15 = this.f74022c;
                                                    char[] cArr2 = this.f74020a;
                                                    int iB = b();
                                                    int i16 = this.f74023d + 1;
                                                    this.f74022c = i16;
                                                    compiledIfNode = new CompiledIncludeNode(i15, str, cArr2, iB, i16, this.f74029j);
                                                } else {
                                                    int i17 = this.f74022c;
                                                    char[] cArr3 = this.f74020a;
                                                    int iB2 = b();
                                                    int i18 = this.f74023d + 1;
                                                    this.f74022c = i18;
                                                    compiledIfNode = new IncludeNode(i17, str, cArr3, iB2, i18);
                                                }
                                                nodeI2.next = compiledIfNode;
                                                break;
                                            case AD_REWARD_USER_VALUE:
                                                Node nodeI3 = i(textNode);
                                                if (this.f74027h) {
                                                    int i19 = this.f74022c;
                                                    char[] cArr4 = this.f74020a;
                                                    int iB3 = b();
                                                    int i20 = this.f74023d + 1;
                                                    this.f74022c = i20;
                                                    compiledIfNode = new CompiledNamedIncludeNode(i19, str, cArr4, iB3, i20, this.f74029j);
                                                } else {
                                                    int i21 = this.f74022c;
                                                    char[] cArr5 = this.f74020a;
                                                    int iB4 = b();
                                                    int i22 = this.f74023d + 1;
                                                    this.f74022c = i22;
                                                    compiledIfNode = new NamedIncludeNode(i21, str, cArr5, iB4, i22);
                                                }
                                                nodeI3.next = compiledIfNode;
                                                break;
                                            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                                Node nodeI4 = i(textNode);
                                                int i23 = this.f74022c;
                                                char[] cArr6 = this.f74020a;
                                                int iB5 = b();
                                                int i24 = this.f74023d + 1;
                                                this.f74022c = i24;
                                                compiledIfNode = new CommentNode(i23, str, cArr6, iB5, i24);
                                                nodeI4.next = compiledIfNode;
                                                break;
                                            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                                Node nodeI5 = i(textNode);
                                                if (this.f74027h) {
                                                    int i25 = this.f74022c;
                                                    char[] cArr7 = this.f74020a;
                                                    int iB6 = b();
                                                    int i26 = this.f74023d + 1;
                                                    this.f74022c = i26;
                                                    compiledIfNode = new CompiledCodeNode(i25, str, cArr7, iB6, i26, this.f74029j);
                                                } else {
                                                    int i27 = this.f74022c;
                                                    char[] cArr8 = this.f74020a;
                                                    int iB7 = b();
                                                    int i28 = this.f74023d + 1;
                                                    this.f74022c = i28;
                                                    compiledIfNode = new CodeNode(i27, str, cArr8, iB7, i28);
                                                }
                                                nodeI5.next = compiledIfNode;
                                                break;
                                            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                                Node nodeI6 = i(textNode);
                                                if (this.f74027h) {
                                                    int i29 = this.f74022c;
                                                    char[] cArr9 = this.f74020a;
                                                    int iB8 = b();
                                                    int i30 = this.f74023d + 1;
                                                    this.f74022c = i30;
                                                    compiledIfNode = new CompiledDeclareNode(i29, str, cArr9, iB8, i30, this.f74029j);
                                                } else {
                                                    int i31 = this.f74022c;
                                                    char[] cArr10 = this.f74020a;
                                                    int iB9 = b();
                                                    int i32 = this.f74023d + 1;
                                                    this.f74022c = i32;
                                                    compiledIfNode = new DeclareNode(i31, str, cArr10, iB9, i32);
                                                }
                                                nodeI6.next = compiledIfNode;
                                                gVar.q(compiledIfNode);
                                                compiledIfNode.setTerminus(new TerminalNode());
                                                break;
                                            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                                Node nodeI7 = i(textNode);
                                                if (this.f74027h) {
                                                    int i33 = this.f74022c;
                                                    char[] cArr11 = this.f74020a;
                                                    int iB10 = b();
                                                    int i34 = this.f74023d + 1;
                                                    this.f74022c = i34;
                                                    compiledIfNode = new CompiledEvalNode(i33, str, cArr11, iB10, i34, this.f74029j);
                                                } else {
                                                    int i35 = this.f74022c;
                                                    char[] cArr12 = this.f74020a;
                                                    int iB11 = b();
                                                    int i36 = this.f74023d + 1;
                                                    this.f74022c = i36;
                                                    compiledIfNode = new EvalNode(i35, str, cArr12, iB11, i36);
                                                }
                                                nodeI7.next = compiledIfNode;
                                                break;
                                            default:
                                                if (str.length() == 0) {
                                                    Node nodeI8 = i(textNode);
                                                    if (this.f74027h) {
                                                        int i37 = this.f74022c;
                                                        char[] cArr13 = this.f74020a;
                                                        int iB12 = b();
                                                        int i38 = this.f74023d + 1;
                                                        this.f74022c = i38;
                                                        compiledIfNode = new CompiledExpressionNode(i37, str, cArr13, iB12, i38, this.f74029j);
                                                    } else {
                                                        int i39 = this.f74022c;
                                                        char[] cArr14 = this.f74020a;
                                                        int iB13 = b();
                                                        int i40 = this.f74023d + 1;
                                                        this.f74022c = i40;
                                                        compiledIfNode = new ExpressionNode(i39, str, cArr14, iB13, i40);
                                                    }
                                                    nodeI8.next = compiledIfNode;
                                                } else {
                                                    Map map2 = this.f74028i;
                                                    if (map2 == null || !map2.containsKey(str)) {
                                                        throw new RuntimeException("unknown token type: " + str);
                                                    }
                                                    Class cls = (Class) this.f74028i.get(str);
                                                    try {
                                                        Node nodeI9 = i(textNode);
                                                        terminus = (Node) cls.newInstance();
                                                        nodeI9.next = terminus;
                                                        terminus.setBegin(this.f74022c);
                                                        terminus.setName(str);
                                                        terminus.setCStart(b());
                                                        int i41 = this.f74023d + 1;
                                                        this.f74022c = i41;
                                                        terminus.setCEnd(i41);
                                                        terminus.setEnd(terminus.getCEnd());
                                                        terminus.setContents(m.K0(this.f74020a, terminus.getCStart(), (terminus.getCEnd() - terminus.getCStart()) - 1));
                                                        if (terminus.isOpenNode()) {
                                                            gVar.q(terminus);
                                                        }
                                                    } catch (IllegalAccessException unused) {
                                                        throw new RuntimeException("unable to instantiate custom node class: " + cls.getName());
                                                    } catch (InstantiationException unused2) {
                                                        throw new RuntimeException("unable to instantiate custom node class: " + cls.getName());
                                                    }
                                                }
                                                break;
                                        }
                                    } else {
                                        Node nodeI10 = i(textNode);
                                        Node node3 = (Node) gVar.n();
                                        terminus = node3.getTerminus();
                                        terminus.setCStart(b());
                                        int i42 = this.f74022c;
                                        this.f74024e = i42;
                                        terminus.setEnd(i42 - 1);
                                        terminus.calculateContents(this.f74020a);
                                        if (node3.demarcate(terminus, this.f74020a)) {
                                            nodeI10.next = terminus;
                                        }
                                    }
                                    textNode = terminus;
                                } else {
                                    Node nodeI11 = i(textNode);
                                    compiledIfNode = this.f74027h ? new CompiledForEachNode(this.f74022c, str, this.f74020a, b(), this.f74022c, this.f74029j) : new ForEachNode(this.f74022c, str, this.f74020a, b(), this.f74022c);
                                    nodeI11.next = compiledIfNode;
                                    gVar.q(compiledIfNode);
                                    compiledIfNode.setTerminus(new TerminalNode());
                                }
                            } else if (!gVar.g() && (gVar.k() instanceof IfNode)) {
                                Node nodeI12 = i(textNode);
                                IfNode ifNode = (IfNode) gVar.n();
                                nodeI12.next = ifNode.getTerminus();
                                ifNode.demarcate(ifNode.getTerminus(), this.f74020a);
                                textNode = this.f74027h ? new CompiledIfNode(this.f74022c, str, this.f74020a, b(), this.f74022c, this.f74029j) : new IfNode(this.f74022c, str, this.f74020a, b(), this.f74022c);
                                ifNode.next = textNode;
                                textNode.setTerminus(ifNode.getTerminus());
                                gVar.q(textNode);
                            }
                            textNode = compiledIfNode;
                        }
                    }
                }
                this.f74023d++;
            } catch (RuntimeException e11) {
                CompileException compileException2 = new CompileException(e11.getMessage(), this.f74020a, this.f74023d, e11);
                compileException2.setExpr(this.f74020a);
                if (e11 instanceof CompileException) {
                    CompileException compileException3 = (CompileException) e11;
                    if (compileException3.getCursor() != -1) {
                        compileException2.setCursor(compileException3.getCursor());
                        if (compileException3.getColumn() == -1) {
                            compileException2.setColumn(compileException2.getCursor() - this.f74026g);
                        } else {
                            compileException2.setColumn(compileException3.getColumn());
                        }
                    }
                }
                compileException2.setLineNumber(this.f74025f);
                throw compileException2;
            }
        }
    }
}
