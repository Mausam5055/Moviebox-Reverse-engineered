package com.amazonaws.services.s3.model.transform;

import java.util.LinkedList;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractHandler extends DefaultHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final StringBuilder f18849a = new StringBuilder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedList f18850b = new LinkedList();

    AbstractHandler() {
    }

    protected final boolean a() {
        return this.f18850b.isEmpty();
    }

    protected abstract void b(String str, String str2, String str3);

    protected abstract void c(String str, String str2, String str3, Attributes attributes);

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void characters(char[] cArr, int i11, int i12) {
        this.f18849a.append(cArr, i11, i12);
    }

    protected final String d() {
        return this.f18849a.toString();
    }

    protected final boolean e(String... strArr) {
        if (strArr.length != this.f18850b.size()) {
            return false;
        }
        int i11 = 0;
        for (String str : this.f18850b) {
            String str2 = strArr[i11];
            if (!str2.equals("*") && !str2.equals(str)) {
                return false;
            }
            i11++;
        }
        return true;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void endElement(String str, String str2, String str3) {
        this.f18850b.removeLast();
        b(str, str2, str3);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startElement(String str, String str2, String str3, Attributes attributes) {
        this.f18849a.setLength(0);
        c(str, str2, str3, attributes);
        this.f18850b.add(str2);
    }
}
