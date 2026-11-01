package com.pgl.ssdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes5.dex */
public class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile i0 f40153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f40154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<Integer> f40155c = new ArrayList();

    private i0(Context context) {
        this.f40154b = null;
        this.f40154b = context;
    }

    public static i0 a(Context context) {
        if (f40153a == null) {
            synchronized (i0.class) {
                try {
                    if (f40153a == null) {
                        f40153a = new i0(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f40153a;
    }

    public void a() {
        int iF = f();
        if (iF == -1) {
            return;
        }
        this.f40155c.add(Integer.valueOf(iF));
        try {
            int size = this.f40155c.size();
            if (size > 20) {
                ArrayList arrayList = new ArrayList(this.f40155c.subList(size - 10, size));
                this.f40155c.clear();
                this.f40155c = arrayList;
            }
        } catch (Throwable unused) {
        }
    }

    public int b() {
        Intent intentRegisterReceiver = this.f40154b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            return 0;
        }
        return intentRegisterReceiver.getIntExtra("plugged", 0);
    }

    public int c() {
        Intent intentRegisterReceiver = this.f40154b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            return 0;
        }
        return Math.round(((intentRegisterReceiver.getIntExtra(PermissionConstant.level, 0) / intentRegisterReceiver.getIntExtra("scale", 0)) * 100.0f) * 10.0f) / 10;
    }

    public synchronized String d() {
        if (this.f40155c.size() <= 0) {
            return TmcConstants.COLD_OPEN_TYPE;
        }
        List<Integer> list = this.f40155c;
        return String.valueOf(list.get(list.size() - 1).intValue() % 10000);
    }

    public synchronized String e() {
        return new JSONArray((Collection) this.f40155c).toString();
    }

    @SuppressLint({"DefaultLocale"})
    public int f() {
        int iC;
        int iB = 0;
        try {
            synchronized (this) {
                iB = b();
                iC = c();
            }
            return (iB * 10000) + iC;
        } catch (Exception unused) {
            return iB * 10000;
        }
    }
}
