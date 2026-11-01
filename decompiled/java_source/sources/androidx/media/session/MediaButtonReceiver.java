package androidx.media.session;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;
import org.mvel2.ast.ASTNode;
import s1.c;

/* JADX INFO: loaded from: classes.dex */
public class MediaButtonReceiver extends BroadcastReceiver {

    private static final class a {
        public static ForegroundServiceStartNotAllowedException a(IllegalStateException illegalStateException) {
            return s1.b.a(illegalStateException);
        }

        public static boolean b(IllegalStateException illegalStateException) {
            return c.a(illegalStateException);
        }
    }

    private static class b extends MediaBrowserCompat.c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Context f9779c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Intent f9780d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final BroadcastReceiver.PendingResult f9781e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private MediaBrowserCompat f9782f;

        b(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f9779c = context;
            this.f9780d = intent;
            this.f9781e = pendingResult;
        }

        private void e() {
            this.f9782f.b();
            this.f9781e.finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c
        public void a() {
            new MediaControllerCompat(this.f9779c, this.f9782f.d()).a((KeyEvent) this.f9780d.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            e();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c
        public void b() {
            e();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c
        public void c() {
            e();
        }

        void f(MediaBrowserCompat mediaBrowserCompat) {
            this.f9782f = mediaBrowserCompat;
        }
    }

    public static PendingIntent a(Context context, long j11) {
        ComponentName componentNameC = c(context);
        if (componentNameC != null) {
            return b(context, componentNameC, j11);
        }
        Log.w("MediaButtonReceiver", "A unique media button receiver could not be found in the given context, so couldn't build a pending intent.");
        return null;
    }

    public static PendingIntent b(Context context, ComponentName componentName, long j11) {
        if (componentName == null) {
            Log.w("MediaButtonReceiver", "The component name of media button receiver should be provided.");
            return null;
        }
        int keyCode = PlaybackStateCompat.toKeyCode(j11);
        if (keyCode == 0) {
            Log.w("MediaButtonReceiver", "Cannot build a media button pending intent with the given action: " + j11);
            return null;
        }
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, keyCode));
        int i11 = Build.VERSION.SDK_INT;
        intent.addFlags(ASTNode.DEOP);
        return PendingIntent.getBroadcast(context, keyCode, intent, i11 >= 31 ? ASTNode.PCTX_STORED : 0);
    }

    public static ComponentName c(Context context) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (listQueryBroadcastReceivers.size() == 1) {
            ActivityInfo activityInfo = listQueryBroadcastReceivers.get(0).activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        }
        if (listQueryBroadcastReceivers.size() <= 1) {
            return null;
        }
        Log.w("MediaButtonReceiver", "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
        return null;
    }

    private static ComponentName d(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (listQueryIntentServices.size() == 1) {
            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
            return new ComponentName(serviceInfo.packageName, serviceInfo.name);
        }
        if (listQueryIntentServices.isEmpty()) {
            return null;
        }
        throw new IllegalStateException("Expected 1 service that handles " + str + ", found " + listQueryIntentServices.size());
    }

    protected void e(Intent intent, ForegroundServiceStartNotAllowedException foregroundServiceStartNotAllowedException) {
        Log.e("MediaButtonReceiver", "caught exception when trying to start a foreground service from the background: " + foregroundServiceStartNotAllowedException.getMessage());
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Ignore unsupported intent: ");
            sb2.append(intent);
            return;
        }
        ComponentName componentNameD = d(context, "android.intent.action.MEDIA_BUTTON");
        if (componentNameD != null) {
            intent.setComponent(componentNameD);
            try {
                androidx.core.content.b.startForegroundService(context, intent);
                return;
            } catch (IllegalStateException e11) {
                if (Build.VERSION.SDK_INT < 31 || !a.b(e11)) {
                    throw e11;
                }
                e(intent, a.a(e11));
                return;
            }
        }
        ComponentName componentNameD2 = d(context, "android.media.browse.MediaBrowserService");
        if (componentNameD2 == null) {
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
        BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
        Context applicationContext = context.getApplicationContext();
        b bVar = new b(applicationContext, intent, pendingResultGoAsync);
        MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, componentNameD2, bVar, null);
        bVar.f(mediaBrowserCompat);
        mediaBrowserCompat.a();
    }
}
