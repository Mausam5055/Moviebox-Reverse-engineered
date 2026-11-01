package org.mvel2.templates.res;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.mvel2.CompileException;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.templates.TemplateRuntimeError;
import org.mvel2.util.m;
import r10.d;
import s10.a;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class ForEachNode extends Node {
    private String[] expression;
    private String[] item;
    public Node nestedNode;
    private char[] sepExpr;

    public ForEachNode(int i11, String str, char[] cArr, int i12, int i13) {
        super(i11, str, cArr, i12, i13);
        configure();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    private void configure() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
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
                this.expression = new String[arrayList2.size()];
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    this.expression[i13] = (String) it2.next();
                    i13++;
                }
                return;
            }
            char[] cArr = this.contents;
            char c11 = cArr[iC];
            if (c11 == '\"') {
                iC = m.c(cArr, iC, c11);
            } else {
                if (c11 != ',') {
                    if (c11 == ':') {
                        arrayList.add(m.x(cArr, i11, iC - i11));
                    } else if (c11 == '[' || c11 == '{' || c11 == '\'' || c11 == '(') {
                        iC = m.c(cArr, iC, c11);
                    }
                } else {
                    if (arrayList2.size() != arrayList.size() - 1) {
                        throw new CompileException("unexpected character ',' in foreach tag", this.contents, this.cStart + iC);
                    }
                    arrayList2.add(m.x(this.contents, i11, iC - i11));
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
        if (contents.length != 0) {
            return false;
        }
        this.sepExpr = null;
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        int length = this.item.length;
        Iterator[] itArr = new Iterator[length];
        for (int i11 = 0; i11 < length; i11++) {
            Object objN = org.mvel2.d.n(this.expression[i11], obj, variableResolverFactory);
            if (objN instanceof Iterable) {
                itArr[i11] = ((Iterable) objN).iterator();
            } else {
                if (!(objN instanceof Object[])) {
                    throw new TemplateRuntimeError("cannot iterate object type: " + objN.getClass().getName());
                }
                itArr[i11] = new a((Object[]) objN);
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
                        cVar.append(String.valueOf(org.mvel2.d.s(this.sepExpr, obj, variableResolverFactory)));
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
