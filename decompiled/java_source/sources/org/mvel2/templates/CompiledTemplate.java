package org.mvel2.templates;

import java.io.Serializable;
import org.mvel2.templates.res.Node;

/* JADX INFO: loaded from: classes7.dex */
public class CompiledTemplate implements Serializable {
    private Node root;
    private char[] template;

    public CompiledTemplate(char[] cArr, Node node) {
        this.template = cArr;
        this.root = node;
    }

    public Node getRoot() {
        return this.root;
    }

    public char[] getTemplate() {
        return this.template;
    }

    public void setRoot(Node node) {
        this.root = node;
    }

    public void setTemplate(char[] cArr) {
        this.template = cArr;
    }
}
