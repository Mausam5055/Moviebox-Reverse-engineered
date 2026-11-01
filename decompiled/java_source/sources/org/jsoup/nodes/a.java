package org.jsoup.nodes;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.jsoup.SerializationException;

/* JADX INFO: loaded from: classes7.dex */
public class a implements Map.Entry, Cloneable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f71749d = {"allowfullscreen", TmcConstants.KEY_ASYNC, "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", MRAIDPresenter.OPEN, "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f71750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f71751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    b f71752c;

    public a(String str, String str2) {
        this(str, str2, null);
    }

    public a(String str, String str2, b bVar) {
        org.jsoup.helper.d.j(str);
        this.f71750a = str.trim();
        org.jsoup.helper.d.h(str);
        this.f71751b = str2;
        this.f71752c = bVar;
    }

    protected static void g(String str, String str2, Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        appendable.append(str);
        if (k(str, str2, outputSettings)) {
            return;
        }
        appendable.append("=\"");
        Entities.e(appendable, b.j(str2), outputSettings, true, false, false);
        appendable.append('\"');
    }

    protected static boolean i(String str) {
        return Arrays.binarySearch(f71749d, str) >= 0;
    }

    protected static boolean k(String str, String str2, Document.OutputSettings outputSettings) {
        return outputSettings.m() == Document.OutputSettings.Syntax.html && (str2 == null || (("".equals(str2) || str2.equalsIgnoreCase(str)) && i(str)));
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override // java.util.Map.Entry
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public String getKey() {
        return this.f71750a;
    }

    @Override // java.util.Map.Entry
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public String getValue() {
        return this.f71751b;
    }

    public String e() {
        StringBuilder sb2 = new StringBuilder();
        try {
            f(sb2, new Document("").g1());
            return sb2.toString();
        } catch (IOException e11) {
            throw new SerializationException(e11);
        }
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.f71750a;
        if (str == null ? aVar.f71750a != null : !str.equals(aVar.f71750a)) {
            return false;
        }
        String str2 = this.f71751b;
        String str3 = aVar.f71751b;
        if (str2 != null) {
            return str2.equals(str3);
        }
        return str3 == null;
    }

    protected void f(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        g(this.f71750a, this.f71751b, appendable, outputSettings);
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        String str = this.f71750a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f71751b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public String setValue(String str) {
        int iT;
        String strN = this.f71752c.n(this.f71750a);
        b bVar = this.f71752c;
        if (bVar != null && (iT = bVar.t(this.f71750a)) != -1) {
            this.f71752c.f71756c[iT] = str;
        }
        this.f71751b = str;
        return strN;
    }

    public String toString() {
        return e();
    }
}
