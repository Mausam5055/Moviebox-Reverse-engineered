package r1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f74004f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static a f74005g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f74006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f74007b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f74008c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList f74009d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f74010e;

    /* JADX INFO: renamed from: r1.a$a, reason: collision with other inner class name */
    class HandlerC0899a extends Handler {
        HandlerC0899a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                a.this.a();
            }
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f74012a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ArrayList f74013b;

        b(Intent intent, ArrayList arrayList) {
            this.f74012a = intent;
            this.f74013b = arrayList;
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final IntentFilter f74014a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final BroadcastReceiver f74015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f74016c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f74017d;

        c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f74014a = intentFilter;
            this.f74015b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(128);
            sb2.append("Receiver{");
            sb2.append(this.f74015b);
            sb2.append(" filter=");
            sb2.append(this.f74014a);
            if (this.f74017d) {
                sb2.append(" DEAD");
            }
            sb2.append("}");
            return sb2.toString();
        }
    }

    private a(Context context) {
        this.f74006a = context;
        this.f74010e = new HandlerC0899a(context.getMainLooper());
    }

    public static a b(Context context) {
        a aVar;
        synchronized (f74004f) {
            try {
                if (f74005g == null) {
                    f74005g = new a(context.getApplicationContext());
                }
                aVar = f74005g;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    void a() {
        int size;
        b[] bVarArr;
        while (true) {
            synchronized (this.f74007b) {
                try {
                    size = this.f74009d.size();
                    if (size <= 0) {
                        return;
                    }
                    bVarArr = new b[size];
                    this.f74009d.toArray(bVarArr);
                    this.f74009d.clear();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            for (int i11 = 0; i11 < size; i11++) {
                b bVar = bVarArr[i11];
                int size2 = bVar.f74013b.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    c cVar = (c) bVar.f74013b.get(i12);
                    if (!cVar.f74017d) {
                        cVar.f74015b.onReceive(this.f74006a, bVar.f74012a);
                    }
                }
            }
        }
    }

    public void c(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f74007b) {
            try {
                c cVar = new c(intentFilter, broadcastReceiver);
                ArrayList arrayList = (ArrayList) this.f74007b.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    this.f74007b.put(broadcastReceiver, arrayList);
                }
                arrayList.add(cVar);
                for (int i11 = 0; i11 < intentFilter.countActions(); i11++) {
                    String action = intentFilter.getAction(i11);
                    ArrayList arrayList2 = (ArrayList) this.f74008c.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                        this.f74008c.put(action, arrayList2);
                    }
                    arrayList2.add(cVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean d(Intent intent) {
        int i11;
        String str;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        String str3;
        synchronized (this.f74007b) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f74006a.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z10 = (intent.getFlags() & 8) != 0;
                if (z10) {
                    Log.v("LocalBroadcastManager", "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
                }
                ArrayList arrayList3 = (ArrayList) this.f74008c.get(intent.getAction());
                if (arrayList3 != null) {
                    if (z10) {
                        Log.v("LocalBroadcastManager", "Action list: " + arrayList3);
                    }
                    ArrayList arrayList4 = null;
                    int i12 = 0;
                    while (i12 < arrayList3.size()) {
                        c cVar = (c) arrayList3.get(i12);
                        if (z10) {
                            Log.v("LocalBroadcastManager", "Matching against filter " + cVar.f74014a);
                        }
                        if (cVar.f74016c) {
                            if (z10) {
                                Log.v("LocalBroadcastManager", "  Filter's target already added");
                            }
                            i11 = i12;
                            arrayList2 = arrayList3;
                            str = action;
                            str2 = strResolveTypeIfNeeded;
                            arrayList = arrayList4;
                        } else {
                            i11 = i12;
                            str = action;
                            arrayList = arrayList4;
                            arrayList2 = arrayList3;
                            str2 = strResolveTypeIfNeeded;
                            int iMatch = cVar.f74014a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                            if (iMatch >= 0) {
                                if (z10) {
                                    Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(iMatch));
                                }
                                arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                                arrayList4.add(cVar);
                                cVar.f74016c = true;
                            } else if (z10) {
                                if (iMatch == -4) {
                                    str3 = "category";
                                } else if (iMatch == -3) {
                                    str3 = EventConstants.KEY_ACTION;
                                } else if (iMatch != -2) {
                                    str3 = iMatch != -1 ? "unknown reason" : NativeComponentConstants.KEY_COMPONENT_TYPE;
                                } else {
                                    str3 = "data";
                                }
                                Log.v("LocalBroadcastManager", "  Filter did not match: " + str3);
                            }
                            i12 = i11 + 1;
                            action = str;
                            arrayList3 = arrayList2;
                            strResolveTypeIfNeeded = str2;
                        }
                        arrayList4 = arrayList;
                        i12 = i11 + 1;
                        action = str;
                        arrayList3 = arrayList2;
                        strResolveTypeIfNeeded = str2;
                    }
                    ArrayList arrayList5 = arrayList4;
                    if (arrayList5 != null) {
                        for (int i13 = 0; i13 < arrayList5.size(); i13++) {
                            ((c) arrayList5.get(i13)).f74016c = false;
                        }
                        this.f74009d.add(new b(intent, arrayList5));
                        if (!this.f74010e.hasMessages(1)) {
                            this.f74010e.sendEmptyMessage(1);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f74007b) {
            try {
                ArrayList arrayList = (ArrayList) this.f74007b.remove(broadcastReceiver);
                if (arrayList == null) {
                    return;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    c cVar = (c) arrayList.get(size);
                    cVar.f74017d = true;
                    for (int i11 = 0; i11 < cVar.f74014a.countActions(); i11++) {
                        String action = cVar.f74014a.getAction(i11);
                        ArrayList arrayList2 = (ArrayList) this.f74008c.get(action);
                        if (arrayList2 != null) {
                            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                                c cVar2 = (c) arrayList2.get(size2);
                                if (cVar2.f74015b == broadcastReceiver) {
                                    cVar2.f74017d = true;
                                    arrayList2.remove(size2);
                                }
                            }
                            if (arrayList2.size() <= 0) {
                                this.f74008c.remove(action);
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
