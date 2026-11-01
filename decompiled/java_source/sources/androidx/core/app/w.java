package androidx.core.app;

import android.app.Person;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    CharSequence f8113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    IconCompat f8114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f8115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f8116d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f8117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f8118f;

    static class a {
        static w a(Person person) {
            return new b().f(person.getName()).c(person.getIcon() != null ? IconCompat.b(person.getIcon()) : null).g(person.getUri()).e(person.getKey()).b(person.isBot()).d(person.isImportant()).a();
        }

        static Person b(w wVar) {
            return new Person.Builder().setName(wVar.d()).setIcon(wVar.b() != null ? wVar.b().w() : null).setUri(wVar.e()).setKey(wVar.c()).setBot(wVar.f()).setImportant(wVar.g()).build();
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        CharSequence f8119a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        IconCompat f8120b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f8121c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f8122d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f8123e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f8124f;

        public w a() {
            return new w(this);
        }

        public b b(boolean z10) {
            this.f8123e = z10;
            return this;
        }

        public b c(IconCompat iconCompat) {
            this.f8120b = iconCompat;
            return this;
        }

        public b d(boolean z10) {
            this.f8124f = z10;
            return this;
        }

        public b e(String str) {
            this.f8122d = str;
            return this;
        }

        public b f(CharSequence charSequence) {
            this.f8119a = charSequence;
            return this;
        }

        public b g(String str) {
            this.f8121c = str;
            return this;
        }
    }

    w(b bVar) {
        this.f8113a = bVar.f8119a;
        this.f8114b = bVar.f8120b;
        this.f8115c = bVar.f8121c;
        this.f8116d = bVar.f8122d;
        this.f8117e = bVar.f8123e;
        this.f8118f = bVar.f8124f;
    }

    public static w a(Person person) {
        return a.a(person);
    }

    public IconCompat b() {
        return this.f8114b;
    }

    public String c() {
        return this.f8116d;
    }

    public CharSequence d() {
        return this.f8113a;
    }

    public String e() {
        return this.f8115c;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        String strC = c();
        String strC2 = wVar.c();
        if (strC == null && strC2 == null) {
            return Objects.equals(Objects.toString(d()), Objects.toString(wVar.d())) && Objects.equals(e(), wVar.e()) && Boolean.valueOf(f()).equals(Boolean.valueOf(wVar.f())) && Boolean.valueOf(g()).equals(Boolean.valueOf(wVar.g()));
        }
        return Objects.equals(strC, strC2);
    }

    public boolean f() {
        return this.f8117e;
    }

    public boolean g() {
        return this.f8118f;
    }

    public String h() {
        String str = this.f8115c;
        if (str != null) {
            return str;
        }
        if (this.f8113a == null) {
            return "";
        }
        return "name:" + ((Object) this.f8113a);
    }

    public int hashCode() {
        String strC = c();
        return strC != null ? strC.hashCode() : Objects.hash(d(), e(), Boolean.valueOf(f()), Boolean.valueOf(g()));
    }

    public Person i() {
        return a.b(this);
    }

    public Bundle j() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("name", this.f8113a);
        IconCompat iconCompat = this.f8114b;
        bundle.putBundle(RewardPlus.ICON, iconCompat != null ? iconCompat.v() : null);
        bundle.putString("uri", this.f8115c);
        bundle.putString("key", this.f8116d);
        bundle.putBoolean("isBot", this.f8117e);
        bundle.putBoolean("isImportant", this.f8118f);
        return bundle;
    }
}
