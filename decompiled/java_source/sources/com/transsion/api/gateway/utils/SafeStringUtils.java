package com.transsion.api.gateway.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class SafeStringUtils {
    private static SafeStringUtils INSTANCE = null;
    public static final String SP_APPID = "appid";
    public static final String SP_CONFIG = "gateway_config_v1";
    public static final String SP_LAST_CONFIG_SYNC_TIME = "last_config_sync_time";
    public static final String SP_NAME = "gate_way";
    private Context mContext;
    private SharedPreferences mSharedPreferences;

    private SafeStringUtils(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public static synchronized SafeStringUtils getInstance(Context context) {
        try {
            if (INSTANCE == null) {
                INSTANCE = new SafeStringUtils(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return INSTANCE;
    }

    private SharedPreferences getSharedPreferences(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(SP_NAME, 0);
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
            this.mSharedPreferences = context.getSharedPreferences(SP_NAME, 0);
        } catch (Exception unused2) {
        }
        return this.mSharedPreferences;
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

    public long getLong(String str) {
        Context context = this.mContext;
        if (context == null) {
            return -1L;
        }
        if (this.mSharedPreferences == null) {
            this.mSharedPreferences = getSharedPreferences(context);
        }
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        if (sharedPreferences == null) {
            return -1L;
        }
        try {
            return sharedPreferences.getLong(str, 0L);
        } catch (Exception unused) {
            return -1L;
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

    public void saveLong(String str, long j11) {
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
            sharedPreferences.edit().putLong(str, j11).apply();
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
