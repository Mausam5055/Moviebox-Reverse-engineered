package d10;

import org.jsoup.Connection;
import org.jsoup.helper.b;
import org.jsoup.nodes.Document;
import org.jsoup.parser.e;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    public static Connection a(String str) {
        return b.d(str);
    }

    public static Document b(String str) {
        return e.c(str, "");
    }

    public static Document c(String str, String str2, e eVar) {
        return eVar.f(str, str2);
    }
}
