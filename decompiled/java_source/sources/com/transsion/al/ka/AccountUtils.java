package com.transsion.al.ka;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.transsion.al.R;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class AccountUtils {
    public static final String ACCOUNT_TYPE = "com.community.oneroom.accounttype";
    public static final String AUTHORITIES = "com.community.oneroom.account.sync";

    public static void autoSyncStart(Context context) {
        try {
            AccountManager accountManager = (AccountManager) context.getSystemService("account");
            Account account = new Account(context.getResources().getString(R.string.app_name), ACCOUNT_TYPE);
            if (accountManager.addAccountExplicitly(account, null, null)) {
                ContentResolver.setIsSyncable(account, AUTHORITIES, 1);
                ContentResolver.setSyncAutomatically(account, AUTHORITIES, true);
                ContentResolver.setMasterSyncAutomatically(true);
                if (Build.VERSION.SDK_INT >= 24) {
                    ContentResolver.addPeriodicSync(account, AUTHORITIES, new Bundle(), TimeUnit.MINUTES.toSeconds(15L));
                } else {
                    ContentResolver.addPeriodicSync(account, AUTHORITIES, new Bundle(), TimeUnit.MINUTES.toSeconds(60L));
                }
            }
        } catch (Throwable th2) {
            c.b(KaManager.TAG, "autoSyncStart exception:" + th2.getMessage());
        }
    }
}
