package com.transsion.push.utils;

import android.text.TextUtils;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.transsion.push.PushConstants;
import com.transsion.push.config.PushRepository;

/* JADX INFO: loaded from: classes6.dex */
public final class FirebaseUtils {

    class a implements OnCompleteListener {
        a() {
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public void onComplete(Task task) {
            if (task.isSuccessful()) {
                String str = (String) task.getResult();
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                PushUtils.B(str);
            }
        }
    }

    public interface b {
        void onFail();

        void onSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b() {
        try {
            int i11 = com.google.firebase.f.f31845m;
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static void c() {
        if (!b()) {
            PushLogUtils.LOG.g("firebase not integrated");
            return;
        }
        try {
            FirebaseMessaging.p().s().addOnCompleteListener(new a());
        } catch (Exception e11) {
            PushLogUtils.LOG.i("updateToken fail" + e11);
        }
    }

    public static void d(final b bVar) {
        ThreadManager.executeInBackground(new Runnable() { // from class: com.transsion.push.utils.FirebaseUtils.2

            /* JADX INFO: renamed from: com.transsion.push.utils.FirebaseUtils$2$a */
            class a implements OnCompleteListener {
                a() {
                }

                @Override // com.google.android.gms.tasks.OnCompleteListener
                public void onComplete(Task task) {
                    if (task.isSuccessful()) {
                        String str = (String) task.getResult();
                        if (TextUtils.isEmpty(str)) {
                            PushLogUtils.LOG.g("firebase  token is empty");
                            b bVar = bVar;
                            if (bVar != null) {
                                bVar.onFail();
                                return;
                            }
                            return;
                        }
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_FCM_TOKEN, str);
                        b bVar2 = bVar;
                        if (bVar2 != null) {
                            bVar2.onSuccess();
                        }
                    }
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!FirebaseUtils.b()) {
                    PushLogUtils.LOG.g("firebase  is not integrated");
                    return;
                }
                try {
                    FirebaseMessaging.p().s().addOnCompleteListener(new a());
                } catch (Exception e11) {
                    PushLogUtils.LOG.i(e11);
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.onFail();
                    }
                }
            }
        });
    }
}
