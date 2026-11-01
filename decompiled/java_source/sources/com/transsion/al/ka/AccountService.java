package com.transsion.al.ka;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;

/* JADX INFO: loaded from: classes5.dex */
public class AccountService extends Service {
    a mAccountAuthenticator;

    class a extends AbstractAccountAuthenticator {
        public a(Context context) {
            super(context);
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public Bundle addAccount(AccountAuthenticatorResponse accountAuthenticatorResponse, String str, String str2, String[] strArr, Bundle bundle) {
            return null;
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public Bundle confirmCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, Bundle bundle) {
            return null;
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public Bundle editProperties(AccountAuthenticatorResponse accountAuthenticatorResponse, String str) {
            return null;
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public Bundle getAuthToken(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) {
            return null;
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public String getAuthTokenLabel(String str) {
            return null;
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public Bundle hasFeatures(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String[] strArr) {
            return null;
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public Bundle updateCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) {
            return null;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mAccountAuthenticator.getIBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mAccountAuthenticator = new a(this);
    }
}
