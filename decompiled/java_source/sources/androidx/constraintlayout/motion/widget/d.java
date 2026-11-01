package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f7249f = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f7250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f7251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f7252c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f7253d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    HashMap f7254e;

    public d() {
        int i11 = f7249f;
        this.f7250a = i11;
        this.f7251b = i11;
        this.f7252c = null;
    }

    public abstract void a(HashMap map);

    @Override // 
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public abstract d clone();

    public d c(d dVar) {
        this.f7250a = dVar.f7250a;
        this.f7251b = dVar.f7251b;
        this.f7252c = dVar.f7252c;
        this.f7253d = dVar.f7253d;
        this.f7254e = dVar.f7254e;
        return this;
    }

    abstract void d(HashSet hashSet);

    abstract void e(Context context, AttributeSet attributeSet);

    boolean f(String str) {
        String str2 = this.f7252c;
        if (str2 == null || str == null) {
            return false;
        }
        return str.matches(str2);
    }

    public void g(int i11) {
        this.f7250a = i11;
    }

    public void h(HashMap map) {
    }

    public d i(int i11) {
        this.f7251b = i11;
        return this;
    }

    boolean j(Object obj) {
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(obj.toString());
    }

    float k(Object obj) {
        return obj instanceof Float ? ((Float) obj).floatValue() : Float.parseFloat(obj.toString());
    }

    int l(Object obj) {
        return obj instanceof Integer ? ((Integer) obj).intValue() : Integer.parseInt(obj.toString());
    }
}
