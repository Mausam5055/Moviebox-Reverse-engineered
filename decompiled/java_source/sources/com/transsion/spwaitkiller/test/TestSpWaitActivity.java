package com.transsion.spwaitkiller.test;

import android.app.Application;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.spwaitkiller.R;
import com.transsion.spwaitkiller.SpWaitKiller;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.LinkedList;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.lsposed.hiddenapibypass.l;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\b\u0010\b\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0002¨\u0006\r"}, d2 = {"Lcom/transsion/spwaitkiller/test/TestSpWaitActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "init", "mockInsertHeavyWorkToQueuedWork", "blockSeconds", "", "Companion", "SpWaitKiller_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestSpWaitActivity extends AppCompatActivity {
    public static final String TAG = "SpWaitKillerTest";

    private final void init() {
        findViewById(R.id.btn_mode_case1).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.spwaitkiller.test.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestSpWaitActivity.init$lambda$0(this.f54500a, view);
            }
        });
        findViewById(R.id.mock).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.spwaitkiller.test.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestSpWaitActivity.init$lambda$1(this.f54501a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$0(TestSpWaitActivity testSpWaitActivity, View view) {
        SpWaitKiller.Companion companion = SpWaitKiller.INSTANCE;
        Application application = testSpWaitActivity.getApplication();
        Intrinsics.g(application, "getApplication(...)");
        companion.builder(application).build().work();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$1(TestSpWaitActivity testSpWaitActivity, View view) {
        testSpWaitActivity.mockInsertHeavyWorkToQueuedWork(10);
        testSpWaitActivity.startActivity(new Intent(testSpWaitActivity, (Class<?>) TestSpWait2Activity.class));
    }

    private final void mockInsertHeavyWorkToQueuedWork(final int blockSeconds) {
        try {
            Class<?> cls = Class.forName("android.app.QueuedWork");
            Method declaredMethod = cls.getDeclaredMethod("getHandler", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            Intrinsics.f(objInvoke, "null cannot be cast to non-null type android.os.Handler");
            Intrinsics.g(((Handler) objInvoke).getLooper(), "getLooper(...)");
            Field declaredField = cls.getDeclaredField("sWork");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(null);
            Intrinsics.f(obj, "null cannot be cast to non-null type java.util.LinkedList<java.lang.Runnable>");
            Field declaredField2 = cls.getDeclaredField("sFinishers");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(null);
            Intrinsics.f(obj2, "null cannot be cast to non-null type java.util.LinkedList<java.lang.Runnable>");
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            ((LinkedList) obj2).add(new Runnable() { // from class: com.transsion.spwaitkiller.test.c
                @Override // java.lang.Runnable
                public final void run() {
                    TestSpWaitActivity.mockInsertHeavyWorkToQueuedWork$lambda$2(countDownLatch);
                }
            });
            ((LinkedList) obj).add(new Runnable() { // from class: com.transsion.spwaitkiller.test.TestSpWaitActivity.mockInsertHeavyWorkToQueuedWork.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Log.e(TestSpWaitActivity.TAG, "run work " + this + " on Thread " + Thread.currentThread().getName() + " begin");
                        Thread.sleep((long) (blockSeconds * 1000));
                        countDownLatch.countDown();
                    } catch (InterruptedException e11) {
                        e11.printStackTrace();
                    }
                    Log.e(TestSpWaitActivity.TAG, "run work " + this + " on Thread " + Thread.currentThread().getName() + " finish");
                }
            });
            getSharedPreferences(OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_TEST, 0).edit().putString(CampaignEx.JSON_KEY_AD_K, "v").apply();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void mockInsertHeavyWorkToQueuedWork$lambda$2(CountDownLatch countDownLatch) {
        Log.e(TAG, "wait runnable run on thread " + Thread.currentThread().getId() + ", is MainThread ? " + (Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId() ? " true" : " false"));
        try {
            countDownLatch.await();
        } catch (InterruptedException e11) {
            e11.printStackTrace();
        }
        Log.e(TAG, "wait runnable end");
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_test_sp_wait);
        if (Build.VERSION.SDK_INT >= 28) {
            l.b("");
        }
        init();
    }
}
