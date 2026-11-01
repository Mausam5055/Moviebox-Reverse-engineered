package com.tencent.tinker.loader.shareutil;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.tinker.anno.Keep;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
@Keep
final class TinkerLogInlineFence extends Handler {
    private static final String TAG = "Tinker.TinkerLogInlineFence";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f40699a = 0;
    private static final Handler mainThreadHandler = new Handler(Looper.getMainLooper());
    private static final List<Object[]> pendingLogs = new ArrayList();

    TinkerLogInlineFence() {
    }

    private static void dummyThrowExceptionMethod() {
        if (TinkerLogInlineFence.class.isPrimitive()) {
            throw new RuntimeException();
        }
    }

    private void handleMessageImpl(Message message) {
        ShareTinkerLog.TinkerLogImp defaultImpl = ShareTinkerLog.getDefaultImpl();
        ShareTinkerLog.TinkerLogImp impl = ShareTinkerLog.getImpl();
        int i11 = message.what;
        if (i11 == 2) {
            Object[] objArr = (Object[]) message.obj;
            if (impl != null) {
                impl.v((String) objArr[2], (String) objArr[3], (Object[]) objArr[4]);
            }
            if (impl == null || impl == defaultImpl) {
                List<Object[]> list = pendingLogs;
                synchronized (list) {
                    list.add(objArr);
                }
                return;
            }
            return;
        }
        if (i11 == 3) {
            Object[] objArr2 = (Object[]) message.obj;
            if (impl != null) {
                impl.d((String) objArr2[2], (String) objArr2[3], (Object[]) objArr2[4]);
            }
            if (impl == null || impl == defaultImpl) {
                List<Object[]> list2 = pendingLogs;
                synchronized (list2) {
                    list2.add(objArr2);
                }
                return;
            }
            return;
        }
        if (i11 == 4) {
            Object[] objArr3 = (Object[]) message.obj;
            if (impl != null) {
                impl.i((String) objArr3[2], (String) objArr3[3], (Object[]) objArr3[4]);
            }
            if (impl == null || impl == defaultImpl) {
                List<Object[]> list3 = pendingLogs;
                synchronized (list3) {
                    list3.add(objArr3);
                }
                return;
            }
            return;
        }
        if (i11 == 5) {
            Object[] objArr4 = (Object[]) message.obj;
            if (impl != null) {
                impl.w((String) objArr4[2], (String) objArr4[3], (Object[]) objArr4[4]);
            }
            if (impl == null || impl == defaultImpl) {
                List<Object[]> list4 = pendingLogs;
                synchronized (list4) {
                    list4.add(objArr4);
                }
                return;
            }
            return;
        }
        if (i11 == 6) {
            Object[] objArr5 = (Object[]) message.obj;
            if (impl != null) {
                impl.e((String) objArr5[2], (String) objArr5[3], (Object[]) objArr5[4]);
            }
            if (impl == null || impl == defaultImpl) {
                List<Object[]> list5 = pendingLogs;
                synchronized (list5) {
                    list5.add(objArr5);
                }
                return;
            }
            return;
        }
        if (i11 != 4001) {
            if (i11 == 4002) {
                printPendingLogs(impl);
                return;
            }
            impl.e(TAG, "[-] Bad msg id: " + message.what, new Object[0]);
            return;
        }
        Object[] objArr6 = (Object[]) message.obj;
        if (impl != null) {
            impl.printErrStackTrace((String) objArr6[2], (Throwable) objArr6[3], (String) objArr6[4], (Object[]) objArr6[5]);
        }
        if (impl == null || impl == defaultImpl) {
            List<Object[]> list6 = pendingLogs;
            synchronized (list6) {
                list6.add(objArr6);
            }
        }
    }

    private void handleMessage_$noinline$(Message message) {
        try {
            dummyThrowExceptionMethod();
        } finally {
            handleMessageImpl(message);
        }
    }

    private static void printPendingLogs(final ShareTinkerLog.TinkerLogImp tinkerLogImp) {
        List<Object[]> list = pendingLogs;
        synchronized (list) {
            if (tinkerLogImp != null) {
                if (!list.isEmpty()) {
                    new Thread(new Runnable() { // from class: com.tencent.tinker.loader.shareutil.TinkerLogInlineFence.1
                        @Override // java.lang.Runnable
                        public void run() {
                            final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.ENGLISH);
                            synchronized (TinkerLogInlineFence.pendingLogs) {
                                try {
                                    for (final Object[] objArr : TinkerLogInlineFence.pendingLogs) {
                                        TinkerLogInlineFence.mainThreadHandler.post(new Runnable() { // from class: com.tencent.tinker.loader.shareutil.TinkerLogInlineFence.1.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                String str = "[PendingLog @ " + simpleDateFormat.format(new Date(((Long) objArr[1]).longValue())) + "] ";
                                                int iIntValue = ((Integer) objArr[0]).intValue();
                                                if (iIntValue == 2) {
                                                    tinkerLogImp.v((String) objArr[2], str + ((String) objArr[3]), (Object[]) objArr[4]);
                                                    return;
                                                }
                                                if (iIntValue == 3) {
                                                    tinkerLogImp.d((String) objArr[2], str + ((String) objArr[3]), (Object[]) objArr[4]);
                                                    return;
                                                }
                                                if (iIntValue == 4) {
                                                    tinkerLogImp.i((String) objArr[2], str + ((String) objArr[3]), (Object[]) objArr[4]);
                                                    return;
                                                }
                                                if (iIntValue == 5) {
                                                    tinkerLogImp.w((String) objArr[2], str + ((String) objArr[3]), (Object[]) objArr[4]);
                                                    return;
                                                }
                                                if (iIntValue == 6) {
                                                    tinkerLogImp.e((String) objArr[2], str + ((String) objArr[3]), (Object[]) objArr[4]);
                                                    return;
                                                }
                                                if (iIntValue != 4001) {
                                                    return;
                                                }
                                                ShareTinkerLog.TinkerLogImp tinkerLogImp2 = tinkerLogImp;
                                                Object[] objArr2 = objArr;
                                                tinkerLogImp2.printErrStackTrace((String) objArr2[2], (Throwable) objArr2[3], str + ((String) objArr[4]), (Object[]) objArr[5]);
                                            }
                                        });
                                    }
                                    TinkerLogInlineFence.pendingLogs.clear();
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        }
                    }, "tinker_log_printer").start();
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        handleMessage_$noinline$(message);
    }
}
