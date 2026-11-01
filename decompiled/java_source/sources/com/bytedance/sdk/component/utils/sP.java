package com.bytedance.sdk.component.utils;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.view.View;
import java.util.concurrent.ExecutorService;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private static Sj Sj;

    public interface Sj {
        ExecutorService getAsyncStartActivityThreadPool();

        boolean isEnableAsyncStartActivity();
    }

    /* JADX INFO: renamed from: com.bytedance.sdk.component.utils.sP$sP, reason: collision with other inner class name */
    public interface InterfaceC0229sP {
        void Sj();

        void Sj(Throwable th2);
    }

    public static Activity Sj(View view) {
        View viewFindViewById;
        Context context;
        if (view == null) {
            return null;
        }
        Context context2 = view.getContext();
        if (context2 instanceof Activity) {
            return (Activity) context2;
        }
        View rootView = view.getRootView();
        if (rootView == null || (viewFindViewById = rootView.findViewById(R.id.content)) == null || (context = viewFindViewById.getContext()) == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            if (baseContext instanceof Activity) {
                return (Activity) baseContext;
            }
        }
        return null;
    }

    public static void Sj(Sj sj2) {
        Sj = sj2;
    }

    public static boolean Sj(Context context, Intent intent, InterfaceC0229sP interfaceC0229sP) {
        return Sj(context, intent, interfaceC0229sP, false);
    }

    public static boolean Sj(final Context context, final Intent intent, final InterfaceC0229sP interfaceC0229sP, boolean z10) {
        Sj sj2;
        ExecutorService asyncStartActivityThreadPool;
        if (!z10 || (sj2 = Sj) == null || !sj2.isEnableAsyncStartActivity() || (asyncStartActivityThreadPool = Sj.getAsyncStartActivityThreadPool()) == null) {
            return TKC(context, intent, interfaceC0229sP);
        }
        asyncStartActivityThreadPool.execute(new com.bytedance.sdk.component.Dq.Dq("startAct") { // from class: com.bytedance.sdk.component.utils.sP.1
            @Override // java.lang.Runnable
            public void run() {
                sP.TKC(context, intent, interfaceC0229sP);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean TKC(Context context, Intent intent, InterfaceC0229sP interfaceC0229sP) {
        if (context != null && intent != null) {
            try {
                if (!(context instanceof Activity)) {
                    intent.addFlags(ASTNode.DEOP);
                }
                context.startActivity(intent);
                if (interfaceC0229sP == null) {
                    return true;
                }
                interfaceC0229sP.Sj();
                return true;
            } catch (Throwable th2) {
                if (interfaceC0229sP != null) {
                    interfaceC0229sP.Sj(th2);
                }
            }
        }
        return false;
    }
}
