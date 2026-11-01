package com.blankj.utilcode.util;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public class UtilsTransActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f20082a = new HashMap();

    public static abstract class TransActivityDelegate implements Serializable {
        public boolean dispatchTouchEvent(@NonNull UtilsTransActivity utilsTransActivity, MotionEvent motionEvent) {
            return false;
        }

        public void onActivityResult(@NonNull UtilsTransActivity utilsTransActivity, int i11, int i12, Intent intent) {
        }

        public void onCreateBefore(@NonNull UtilsTransActivity utilsTransActivity, @Nullable Bundle bundle) {
        }

        public void onCreated(@NonNull UtilsTransActivity utilsTransActivity, @Nullable Bundle bundle) {
        }

        public void onDestroy(@NonNull UtilsTransActivity utilsTransActivity) {
        }

        public void onPaused(@NonNull UtilsTransActivity utilsTransActivity) {
        }

        public void onRequestPermissionsResult(@NonNull UtilsTransActivity utilsTransActivity, int i11, @NonNull String[] strArr, @NonNull int[] iArr) {
        }

        public void onResumed(@NonNull UtilsTransActivity utilsTransActivity) {
        }

        public void onSaveInstanceState(@NonNull UtilsTransActivity utilsTransActivity, Bundle bundle) {
        }

        public void onStarted(@NonNull UtilsTransActivity utilsTransActivity) {
        }

        public void onStopped(@NonNull UtilsTransActivity utilsTransActivity) {
        }
    }

    protected static void R(Activity activity, Utils.b bVar, TransActivityDelegate transActivityDelegate, Class cls) {
        if (transActivityDelegate == null) {
            return;
        }
        Intent intent = new Intent(Utils.a(), (Class<?>) cls);
        intent.putExtra("extra_delegate", transActivityDelegate);
        if (bVar != null) {
            bVar.accept(intent);
        }
        if (activity != null) {
            activity.startActivity(intent);
        } else {
            intent.addFlags(ASTNode.DEOP);
            Utils.a().startActivity(intent);
        }
    }

    public static void T(Utils.b bVar, TransActivityDelegate transActivityDelegate) {
        R(null, bVar, transActivityDelegate, UtilsTransActivity.class);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f20082a.get(this);
        if (transActivityDelegate != null && transActivityDelegate.dispatchTouchEvent(this, motionEvent)) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i11, int i12, Intent intent) {
        super.onActivityResult(i11, i12, intent);
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f20082a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onActivityResult(this, i11, i12, intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        overridePendingTransition(0, 0);
        Serializable serializableExtra = getIntent().getSerializableExtra("extra_delegate");
        if (!(serializableExtra instanceof TransActivityDelegate)) {
            super.onCreate(bundle);
            finish();
            return;
        }
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) serializableExtra;
        f20082a.put(this, transActivityDelegate);
        transActivityDelegate.onCreateBefore(this, bundle);
        super.onCreate(bundle);
        transActivityDelegate.onCreated(this, bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Map map = f20082a;
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) map.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onDestroy(this);
        map.remove(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        overridePendingTransition(0, 0);
        super.onPause();
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f20082a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onPaused(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i11, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i11, strArr, iArr);
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f20082a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onRequestPermissionsResult(this, i11, strArr, iArr);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f20082a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onResumed(this);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f20082a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onSaveInstanceState(this, bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f20082a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onStarted(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        TransActivityDelegate transActivityDelegate = (TransActivityDelegate) f20082a.get(this);
        if (transActivityDelegate == null) {
            return;
        }
        transActivityDelegate.onStopped(this);
    }
}
