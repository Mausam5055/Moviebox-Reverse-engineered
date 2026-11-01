package hb;

import android.text.TextUtils;
import com.google.firebase.abt.AbtException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f64412g = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final DateFormat f64413h = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f64414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f64415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f64416c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Date f64417d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f64418e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f64419f;

    public a(String str, String str2, String str3, Date date, long j11, long j12) {
        this.f64414a = str;
        this.f64415b = str2;
        this.f64416c = str3;
        this.f64417d = date;
        this.f64418e = j11;
        this.f64419f = j12;
    }

    static a a(kb.a.c cVar) {
        String str = cVar.f66741d;
        if (str == null) {
            str = "";
        }
        return new a(cVar.f66739b, String.valueOf(cVar.f66740c), str, new Date(cVar.f66750m), cVar.f66742e, cVar.f66747j);
    }

    static a b(Map map) throws AbtException {
        g(map);
        try {
            return new a((String) map.get("experimentId"), (String) map.get("variantId"), map.containsKey("triggerEvent") ? (String) map.get("triggerEvent") : "", f64413h.parse((String) map.get("experimentStartTime")), Long.parseLong((String) map.get("triggerTimeoutMillis")), Long.parseLong((String) map.get("timeToLiveMillis")));
        } catch (NumberFormatException e11) {
            throw new AbtException("Could not process experiment: one of the durations could not be converted into a long.", e11);
        } catch (ParseException e12) {
            throw new AbtException("Could not process experiment: parsing experiment start time failed.", e12);
        }
    }

    private static void g(Map map) throws AbtException {
        ArrayList arrayList = new ArrayList();
        for (String str : f64412g) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new AbtException(String.format("The following keys are missing from the experiment info map: %s", arrayList));
        }
    }

    String c() {
        return this.f64414a;
    }

    long d() {
        return this.f64417d.getTime();
    }

    String e() {
        return this.f64415b;
    }

    kb.a.c f(String str) {
        kb.a.c cVar = new kb.a.c();
        cVar.f66738a = str;
        cVar.f66750m = d();
        cVar.f66739b = this.f64414a;
        cVar.f66740c = this.f64415b;
        cVar.f66741d = TextUtils.isEmpty(this.f64416c) ? null : this.f64416c;
        cVar.f66742e = this.f64418e;
        cVar.f66747j = this.f64419f;
        return cVar;
    }
}
