package com.mbridge.msdk.foundation.controller;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class e implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f35055a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f35056b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f35057c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f35058d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f35059e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f35060f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f35061g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f35062h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f35063i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f35064j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f35065k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private a f35066l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final SharedPreferences f35067m;

    public interface a {
        void a();
    }

    public e(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
        this.f35067m = defaultSharedPreferences;
        if (defaultSharedPreferences != null) {
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        }
        a();
    }

    private void a() {
        SharedPreferences sharedPreferences = this.f35067m;
        if (sharedPreferences != null) {
            d(sharedPreferences.getString("IABTCF_TCString", ""));
            a(this.f35067m.getInt("IABTCF_gdprApplies", 0));
            c(this.f35067m.getString("IABTCF_PurposeConsents", ""));
            e(this.f35067m.getString("IABTCF_VendorConsents", ""));
            b(this.f35067m.getString("IABTCF_AddtlConsent", ""));
        }
    }

    private boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("[01]+");
    }

    private boolean a(String str, int i11) {
        return a(str) && i11 <= str.length() && i11 >= 1 && '1' == str.charAt(i11 - 1);
    }

    public void a(int i11) {
        this.f35059e = i11;
    }

    public void a(a aVar) {
        if (aVar != null) {
            this.f35066l = aVar;
        }
    }

    public void a(boolean z10) {
        this.f35060f = z10;
    }

    public String b() {
        return this.f35055a;
    }

    public void b(String str) {
        this.f35058d = str;
        if (TextUtils.isEmpty(str)) {
            this.f35064j = true;
            return;
        }
        if (MBridgeConstans.GOOGLE_ATP_ID == -1) {
            this.f35065k = false;
            return;
        }
        this.f35065k = true;
        try {
            String[] strArrSplit = str.split("~");
            if (strArrSplit.length > 1) {
                if (TextUtils.isEmpty(strArrSplit[1])) {
                    this.f35064j = false;
                } else {
                    this.f35064j = str.contains(String.valueOf(MBridgeConstans.GOOGLE_ATP_ID));
                }
            }
        } catch (Throwable th2) {
            o0.b("TCStringManager", th2.getMessage());
        }
    }

    public void c(String str) {
        this.f35061g = a(str, 1);
        this.f35062h = a(str, 2);
        this.f35056b = str;
    }

    public boolean c() {
        if (this.f35059e == 0) {
            a(true);
            return this.f35060f;
        }
        if (MBridgeConstans.VERIFY_ATP_CONSENT) {
            a((this.f35063i || (this.f35065k && this.f35064j)) && this.f35061g && this.f35062h);
        } else {
            a(this.f35063i && this.f35061g && this.f35062h);
        }
        return this.f35060f;
    }

    public void d(String str) {
        this.f35055a = str;
    }

    public void e(String str) {
        this.f35063i = a(str, 867);
        this.f35057c = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:25:0x0048  */
    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        byte b11;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            switch (str) {
                case "IABTCF_PurposeConsents":
                    b11 = 2;
                    break;
                case "IABTCF_gdprApplies":
                    b11 = 1;
                    break;
                case "IABTCF_TCString":
                    b11 = 0;
                    break;
                case "IABTCF_AddtlConsent":
                    b11 = 4;
                    break;
                case "IABTCF_VendorConsents":
                    b11 = 3;
                    break;
                default:
                    b11 = -1;
                    break;
            }
            if (b11 == 0) {
                d(sharedPreferences.getString("IABTCF_TCString", ""));
            } else if (b11 == 1) {
                a(sharedPreferences.getInt("IABTCF_gdprApplies", 0));
            } else if (b11 == 2) {
                c(sharedPreferences.getString("IABTCF_PurposeConsents", ""));
            } else if (b11 == 3) {
                e(sharedPreferences.getString("IABTCF_VendorConsents", ""));
            } else if (b11 == 4) {
                b(sharedPreferences.getString("IABTCF_AddtlConsent", ""));
            }
            a aVar = this.f35066l;
            if (aVar != null) {
                aVar.a();
            }
        } catch (Throwable th2) {
            o0.b("TCStringManager", th2.getMessage());
        }
    }
}
