package com.transsion.athena.attribution;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;

/* JADX INFO: loaded from: classes5.dex */
public class SpUtils {
    private static SpUtils INSTANCE;
    private final Context mContext;
    private SharedPreferences mSharedPreferences;

    private SpUtils(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public static synchronized SpUtils getInstance(Context context) {
        try {
            if (INSTANCE == null) {
                INSTANCE = new SpUtils(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return INSTANCE;
    }

    private SharedPreferences getSharedPreferences(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(AttrConstant.SP_NAME, 0);
                this.mSharedPreferences = sharedPreferences;
                return sharedPreferences;
            } catch (Exception unused) {
                return null;
            }
        }
        SharedPreferences sharedPreferences2 = this.mSharedPreferences;
        if (sharedPreferences2 != null) {
            return sharedPreferences2;
        }
        if (context == null) {
            return null;
        }
        try {
            this.mSharedPreferences = context.getSharedPreferences(AttrConstant.SP_NAME, 0);
        } catch (Exception unused2) {
        }
        return this.mSharedPreferences;
    }

    public boolean contains(String str) {
        if (this.mSharedPreferences == null) {
            this.mSharedPreferences = getSharedPreferences(this.mContext);
        }
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        return sharedPreferences != null && sharedPreferences.contains(str);
    }

    public int getInt(String str) {
        Context context = this.mContext;
        if (context == null) {
            return -1;
        }
        if (this.mSharedPreferences == null) {
            this.mSharedPreferences = getSharedPreferences(context);
        }
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        if (sharedPreferences == null) {
            return -1;
        }
        try {
            return sharedPreferences.getInt(str, 0);
        } catch (Exception unused) {
            return -1;
        }
    }

    public String getString(String str) {
        Context context = this.mContext;
        if (context == null) {
            return "";
        }
        if (this.mSharedPreferences == null) {
            this.mSharedPreferences = getSharedPreferences(context);
        }
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        if (sharedPreferences == null) {
            return "";
        }
        try {
            return sharedPreferences.getString(str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    public void saveInt(String str, int i11) {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        if (this.mSharedPreferences == null) {
            this.mSharedPreferences = getSharedPreferences(context);
        }
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putInt(str, i11).apply();
        } catch (Exception unused) {
        }
    }

    public void saveString(String str, String str2) {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        if (this.mSharedPreferences == null) {
            this.mSharedPreferences = getSharedPreferences(context);
        }
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putString(str, str2).apply();
        } catch (Exception unused) {
        }
    }
}
