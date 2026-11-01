package org.mvel2.templates.res;

import java.io.Serializable;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;
import r10.d;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public abstract class Node implements Serializable {
    protected int begin;
    protected int cEnd;
    protected int cStart;
    protected char[] contents;
    protected int end;
    protected String name;
    public Node next;
    protected Node terminus;

    public Node() {
    }

    public Node(int i11, String str, char[] cArr, int i12, int i13) {
        this.begin = i11;
        this.cStart = i12;
        this.cEnd = i13 - 1;
        this.end = i13;
        this.name = str;
        this.contents = cArr;
    }

    public Node(int i11, String str, char[] cArr, int i12, int i13, Node node) {
        this.name = str;
        this.begin = i11;
        this.cStart = i12;
        this.cEnd = i13 - 1;
        this.end = i13;
        this.contents = cArr;
        this.next = node;
    }

    public void calculateContents(char[] cArr) {
        int i11 = this.cStart;
        this.contents = m.K0(cArr, i11, this.end - i11);
    }

    public abstract boolean demarcate(Node node, char[] cArr);

    public abstract Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory);

    public int getBegin() {
        return this.begin;
    }

    public int getCEnd() {
        return this.cEnd;
    }

    public int getCStart() {
        return this.cStart;
    }

    public char[] getContents() {
        return this.contents;
    }

    public int getEnd() {
        return this.end;
    }

    public int getLength() {
        return this.end - this.begin;
    }

    public String getName() {
        return this.name;
    }

    public Node getNext() {
        return this.next;
    }

    public Node getTerminus() {
        return this.terminus;
    }

    public boolean isOpenNode() {
        return false;
    }

    public void setBegin(int i11) {
        this.begin = i11;
    }

    public void setCEnd(int i11) {
        this.cEnd = i11;
    }

    public void setCStart(int i11) {
        this.cStart = i11;
    }

    public void setContents(char[] cArr) {
        this.contents = cArr;
    }

    public void setEnd(int i11) {
        this.end = i11;
    }

    public void setName(String str) {
        this.name = str;
    }

    public Node setNext(Node node) {
        this.next = node;
        return node;
    }

    public void setTerminus(Node node) {
        this.terminus = node;
    }
}
