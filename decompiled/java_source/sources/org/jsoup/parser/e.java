package org.jsoup.parser;

import java.io.Reader;
import java.io.StringReader;
import java.util.List;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes7.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i f71835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f71836b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ParseErrorList f71837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f71838d;

    public e(i iVar) {
        this.f71835a = iVar;
        this.f71838d = iVar.b();
    }

    public static e a() {
        return new e(new b());
    }

    public static Document c(String str, String str2) {
        b bVar = new b();
        return bVar.d(new StringReader(str), str2, ParseErrorList.noTracking(), bVar.b());
    }

    public static List d(String str, Element element, String str2) {
        b bVar = new b();
        return bVar.i0(str, element, str2, ParseErrorList.noTracking(), bVar.b());
    }

    public static e g() {
        return new e(new j());
    }

    public boolean b() {
        return this.f71836b > 0;
    }

    public Document e(Reader reader, String str) {
        ParseErrorList parseErrorListTracking = b() ? ParseErrorList.tracking(this.f71836b) : ParseErrorList.noTracking();
        this.f71837c = parseErrorListTracking;
        return this.f71835a.d(reader, str, parseErrorListTracking, this.f71838d);
    }

    public Document f(String str, String str2) {
        this.f71837c = b() ? ParseErrorList.tracking(this.f71836b) : ParseErrorList.noTracking();
        return this.f71835a.d(new StringReader(str), str2, this.f71837c, this.f71838d);
    }
}
