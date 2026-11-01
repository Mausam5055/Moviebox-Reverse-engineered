package org.mvel2.templates.res;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.templates.TemplateRuntimeError;
import org.mvel2.util.m;
import s10.a;
import s10.b;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class CompiledForEachNode extends Node {
    private Serializable cSepExpr;

    /* JADX INFO: renamed from: ce, reason: collision with root package name */
    private Serializable[] f72025ce;
    private ParserContext context;
    private String[] item;
    public Node nestedNode;
    private char[] sepExpr;

    public CompiledForEachNode(int i11, String str, char[] cArr, int i12, int i13, ParserContext parserContext) {
        super(i11, str, cArr, i12, i13);
        this.context = parserContext;
        configure();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    private void configure() {
        ArrayList arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        int iC = this.cStart;
        int i11 = iC;
        while (true) {
            int i12 = this.cEnd;
            if (iC >= i12) {
                if (i11 < i12) {
                    if (arrayList2.size() != arrayList.size() - 1) {
                        throw new CompileException("expected character ':' in foreach tag", this.contents, this.cEnd);
                    }
                    arrayList2.add(m.x(this.contents, i11, this.cEnd - i11));
                }
                this.item = new String[arrayList.size()];
                Iterator it = arrayList.iterator();
                int i13 = 0;
                int i14 = 0;
                while (it.hasNext()) {
                    this.item[i14] = (String) it.next();
                    i14++;
                }
                int size = arrayList2.size();
                String[] strArr = new String[size];
                this.f72025ce = new Serializable[size];
                for (String str : arrayList2) {
                    Serializable[] serializableArr = this.f72025ce;
                    strArr[i13] = str;
                    serializableArr[i13] = d.f(str, this.context);
                    i13++;
                }
                return;
            }
            char[] cArr = this.contents;
            char c11 = cArr[iC];
            if (c11 == '\"') {
                iC = m.c(cArr, iC, c11);
            } else {
                if (c11 == ',') {
                    if (arrayList2.size() != arrayList.size() - 1) {
                        throw new CompileException("unexpected character ',' in foreach tag", this.contents, this.cStart + iC);
                    }
                    arrayList2.add(m.x(this.contents, i11, iC - i11));
                } else if (c11 == ':') {
                    arrayList.add(m.x(cArr, i11, iC - i11));
                } else if (c11 == '[' || c11 == '{' || c11 == '\'' || c11 == '(') {
                    iC = m.c(cArr, iC, c11);
                }
                i11 = iC + 1;
            }
            iC++;
        }
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        this.nestedNode = this.next;
        this.next = this.terminus;
        char[] contents = node.getContents();
        this.sepExpr = contents;
        if (contents.length == 0) {
            this.sepExpr = null;
            return false;
        }
        this.cSepExpr = d.h(contents, this.context);
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(r10.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        int length = this.item.length;
        Iterator[] itArr = new Iterator[length];
        for (int i11 = 0; i11 < length; i11++) {
            Object objT = d.t(this.f72025ce[i11], obj, variableResolverFactory);
            if (objT instanceof Iterable) {
                itArr[i11] = ((Iterable) objT).iterator();
            } else if (objT instanceof Object[]) {
                itArr[i11] = new a((Object[]) objT);
            } else {
                if (!(objT instanceof Integer)) {
                    throw new TemplateRuntimeError("cannot iterate object type: " + objT.getClass().getName());
                }
                itArr[i11] = new b(((Integer) objT).intValue());
            }
        }
        HashMap map = new HashMap();
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory(map, variableResolverFactory);
        int i12 = length;
        while (true) {
            for (int i13 = 0; i13 < length; i13++) {
                if (itArr[i13].hasNext()) {
                    map.put(this.item[i13], itArr[i13].next());
                } else {
                    i12--;
                    map.put(this.item[i13], "");
                }
            }
            if (i12 == 0) {
                break;
            }
            this.nestedNode.eval(dVar, cVar, obj, mapVariableResolverFactory);
            if (this.sepExpr != null) {
                for (int i14 = 0; i14 < length; i14++) {
                    if (itArr[i14].hasNext()) {
                        cVar.append(String.valueOf(d.t(this.cSepExpr, obj, variableResolverFactory)));
                        break;
                    }
                }
            }
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }

    public Node getNestedNode() {
        return this.nestedNode;
    }

    public void setNestedNode(Node node) {
        this.nestedNode = node;
    }
}
