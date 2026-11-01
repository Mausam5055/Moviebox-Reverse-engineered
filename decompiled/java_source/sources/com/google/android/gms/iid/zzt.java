package com.google.android.gms.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.transsion.push.PushConstants;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
final class zzt implements ServiceConnection {
    int state;
    final Messenger zzch;
    zzy zzci;
    final Queue<zzz<?>> zzcj;
    final SparseArray<zzz<?>> zzck;
    final /* synthetic */ zzr zzcl;

    private zzt(zzr zzrVar) {
        this.zzcl = zzrVar;
        this.state = 0;
        this.zzch = new Messenger(new com.google.android.gms.internal.gcm.zzj(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.iid.zzu
            private final zzt zzcm;

            {
                this.zzcm = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.zzcm.zzd(message);
            }
        }));
        this.zzcj = new ArrayDeque();
        this.zzck = new SparseArray<>();
    }

    private final void zzt() {
        this.zzcl.zzce.execute(new Runnable(this) { // from class: com.google.android.gms.iid.zzw
            private final zzt zzcm;

            {
                this.zzcm = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final zzt zztVar = this.zzcm;
                while (true) {
                    synchronized (zztVar) {
                        try {
                            if (zztVar.state != 2) {
                                return;
                            }
                            if (zztVar.zzcj.isEmpty()) {
                                zztVar.zzu();
                                return;
                            }
                            final zzz<?> zzzVarPoll = zztVar.zzcj.poll();
                            zztVar.zzck.put(zzzVarPoll.zzcp, zzzVarPoll);
                            zztVar.zzcl.zzce.schedule(new Runnable(zztVar, zzzVarPoll) { // from class: com.google.android.gms.iid.zzx
                                private final zzt zzcm;
                                private final zzz zzcn;

                                {
                                    this.zzcm = zztVar;
                                    this.zzcn = zzzVarPoll;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.zzcm.zzg(this.zzcn.zzcp);
                                }
                            }, 30L, TimeUnit.SECONDS);
                            if (Log.isLoggable("MessengerIpcClient", 3)) {
                                String strValueOf = String.valueOf(zzzVarPoll);
                                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 8);
                                sb2.append("Sending ");
                                sb2.append(strValueOf);
                            }
                            Context context = zztVar.zzcl.zzl;
                            Messenger messenger = zztVar.zzch;
                            Message messageObtain = Message.obtain();
                            messageObtain.what = zzzVarPoll.what;
                            messageObtain.arg1 = zzzVarPoll.zzcp;
                            messageObtain.replyTo = messenger;
                            Bundle bundle = new Bundle();
                            bundle.putBoolean("oneWay", zzzVarPoll.zzw());
                            bundle.putString(PushConstants.PROVIDER_FIELD_PKG, context.getPackageName());
                            bundle.putBundle("data", zzzVarPoll.zzcr);
                            messageObtain.setData(bundle);
                            try {
                                zzy zzyVar = zztVar.zzci;
                                Messenger messenger2 = zzyVar.zzad;
                                if (messenger2 != null) {
                                    messenger2.send(messageObtain);
                                } else {
                                    MessengerCompat messengerCompat = zzyVar.zzco;
                                    if (messengerCompat == null) {
                                        throw new IllegalStateException("Both messengers are null");
                                    }
                                    messengerCompat.send(messageObtain);
                                }
                            } catch (RemoteException e11) {
                                zztVar.zzd(2, e11.getMessage());
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Service connected");
            }
            if (iBinder == null) {
                zzd(0, "Null service connection");
                return;
            }
            try {
                this.zzci = new zzy(iBinder);
                this.state = 2;
                zzt();
            } catch (RemoteException e11) {
                zzd(0, e11.getMessage());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceDisconnected(ComponentName componentName) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Service disconnected");
            }
            zzd(2, "Service disconnected");
        } catch (Throwable th2) {
            throw th2;
        }
    }

    final synchronized void zzd(int i11, String str) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String strValueOf = String.valueOf(str);
                if (strValueOf.length() != 0) {
                    "Disconnected: ".concat(strValueOf);
                }
            }
            int i12 = this.state;
            if (i12 == 0) {
                throw new IllegalStateException();
            }
            if (i12 != 1 && i12 != 2) {
                if (i12 == 3) {
                    this.state = 4;
                    return;
                } else {
                    if (i12 == 4) {
                        return;
                    }
                    int i13 = this.state;
                    StringBuilder sb2 = new StringBuilder(26);
                    sb2.append("Unknown state: ");
                    sb2.append(i13);
                    throw new IllegalStateException(sb2.toString());
                }
            }
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Unbinding service");
            }
            this.state = 4;
            ConnectionTracker.getInstance().unbindService(this.zzcl.zzl, this);
            zzaa zzaaVar = new zzaa(i11, str);
            Iterator<zzz<?>> it = this.zzcj.iterator();
            while (it.hasNext()) {
                it.next().zzd(zzaaVar);
            }
            this.zzcj.clear();
            for (int i14 = 0; i14 < this.zzck.size(); i14++) {
                this.zzck.valueAt(i14).zzd(zzaaVar);
            }
            this.zzck.clear();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    final boolean zzd(Message message) {
        int i11 = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb2 = new StringBuilder(41);
            sb2.append("Received response to request: ");
            sb2.append(i11);
        }
        synchronized (this) {
            try {
                zzz<?> zzzVar = this.zzck.get(i11);
                if (zzzVar == null) {
                    StringBuilder sb3 = new StringBuilder(50);
                    sb3.append("Received response for unknown request: ");
                    sb3.append(i11);
                    Log.w("MessengerIpcClient", sb3.toString());
                    return true;
                }
                this.zzck.remove(i11);
                zzu();
                Bundle data = message.getData();
                if (data.getBoolean("unsupported", false)) {
                    zzzVar.zzd(new zzaa(4, "Not supported by GmsCore"));
                } else {
                    zzzVar.zzh(data);
                }
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    final synchronized boolean zze(zzz zzzVar) {
        int i11 = this.state;
        if (i11 == 0) {
            this.zzcj.add(zzzVar);
            Preconditions.checkState(this.state == 0);
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Starting bind to GmsCore");
            }
            this.state = 1;
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            if (ConnectionTracker.getInstance().bindService(this.zzcl.zzl, intent, this, 1)) {
                this.zzcl.zzce.schedule(new Runnable(this) { // from class: com.google.android.gms.iid.zzv
                    private final zzt zzcm;

                    {
                        this.zzcm = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzcm.zzv();
                    }
                }, 30L, TimeUnit.SECONDS);
            } else {
                zzd(0, "Unable to bind to service");
            }
            return true;
        }
        if (i11 == 1) {
            this.zzcj.add(zzzVar);
            return true;
        }
        if (i11 == 2) {
            this.zzcj.add(zzzVar);
            zzt();
            return true;
        }
        if (i11 != 3 && i11 != 4) {
            int i12 = this.state;
            StringBuilder sb2 = new StringBuilder(26);
            sb2.append("Unknown state: ");
            sb2.append(i12);
            throw new IllegalStateException(sb2.toString());
        }
        return false;
    }

    final synchronized void zzg(int i11) {
        zzz<?> zzzVar = this.zzck.get(i11);
        if (zzzVar != null) {
            StringBuilder sb2 = new StringBuilder(31);
            sb2.append("Timing out request: ");
            sb2.append(i11);
            Log.w("MessengerIpcClient", sb2.toString());
            this.zzck.remove(i11);
            zzzVar.zzd(new zzaa(3, "Timed out waiting for response"));
            zzu();
        }
    }

    final synchronized void zzu() {
        try {
            if (this.state == 2 && this.zzcj.isEmpty() && this.zzck.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.state = 3;
                ConnectionTracker.getInstance().unbindService(this.zzcl.zzl, this);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    final synchronized void zzv() {
        if (this.state == 1) {
            zzd(1, "Timed out while binding");
        }
    }
}
