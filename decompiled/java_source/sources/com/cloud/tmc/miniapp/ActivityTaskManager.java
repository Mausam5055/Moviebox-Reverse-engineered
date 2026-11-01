package com.cloud.tmc.miniapp;

import android.app.ActivityManager;
import android.os.Build;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.ActivityHelper;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.base.MiniAppBaseActivity;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import com.cloud.tmc.miniutils.util.Utils;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityTaskManager {
    private static final String TAG = "[ActivityTaskManager]";
    private static final Lock readLock;
    private static final ReadWriteLock readWriteLock;
    private static final Lock writeLock;
    public static final ActivityTaskManager INSTANCE = new ActivityTaskManager();
    private static final ConcurrentHashMap<String, WeakReference<MiniAppActivity>> activityTaskCache = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, Integer> taskIdCache = new ConcurrentHashMap<>();
    private static final ConcurrentLinkedQueue<String> activityQueue = new ConcurrentLinkedQueue<>();

    static {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        readWriteLock = reentrantReadWriteLock;
        Lock lockWriteLock = reentrantReadWriteLock.writeLock();
        Intrinsics.g(lockWriteLock, "readWriteLock.writeLock()");
        writeLock = lockWriteLock;
        Lock lock = reentrantReadWriteLock.readLock();
        Intrinsics.g(lock, "readWriteLock.readLock()");
        readLock = lock;
    }

    private ActivityTaskManager() {
    }

    private final void finishActivity(MiniAppActivity miniAppActivity) {
        App app;
        if (miniAppActivity != null) {
            try {
                ActivityHelper mActivityHelper = miniAppActivity.getMActivityHelper();
                if (mActivityHelper == null || (app = mActivityHelper.getApp()) == null) {
                    return;
                }
                app.exit();
            } catch (Exception e11) {
                TmcLogger.e(TAG, e11);
            }
        }
    }

    private final MiniAppBaseActivity getActivityTask(String str) {
        if (!checkOpenMutipleTask()) {
            return null;
        }
        Lock lock = readLock;
        lock.lock();
        try {
            try {
                ConcurrentHashMap<String, WeakReference<MiniAppActivity>> concurrentHashMap = activityTaskCache;
                if (concurrentHashMap.containsKey(str)) {
                    ConcurrentLinkedQueue<String> concurrentLinkedQueue = activityQueue;
                    concurrentLinkedQueue.remove(str);
                    concurrentLinkedQueue.add(str);
                    WeakReference<MiniAppActivity> weakReference = concurrentHashMap.get(str);
                    MiniAppActivity miniAppActivity = weakReference != null ? weakReference.get() : null;
                    lock.unlock();
                    return miniAppActivity;
                }
                lock.unlock();
            } catch (Exception e11) {
                TmcLogger.e(TAG, e11);
                readLock.unlock();
            }
            return null;
        } catch (Throwable th2) {
            readLock.unlock();
            throw th2;
        }
    }

    private final void removeTask(Integer num) {
        Object next;
        if (num != null) {
            try {
                if (num.intValue() == -1) {
                    return;
                }
            } catch (Exception e11) {
                TmcLogger.e(TAG, e11);
                return;
            }
        }
        Object systemService = Utils.getApp().getSystemService("activity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        List<ActivityManager.AppTask> appTasks = ((ActivityManager) systemService).getAppTasks();
        Intrinsics.g(appTasks, "am.appTasks");
        Iterator<T> it = appTasks.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            ActivityManager.AppTask appTask = (ActivityManager.AppTask) next;
            if (Build.VERSION.SDK_INT < 29) {
                ActivityManager.RecentTaskInfo taskInfo = appTask.getTaskInfo();
                Intrinsics.f(taskInfo, "null cannot be cast to non-null type android.app.ActivityManager.RecentTaskInfo");
                int i11 = taskInfo.id;
                if (num != null && i11 == num.intValue()) {
                    break;
                }
            } else {
                int i12 = appTask.getTaskInfo().taskId;
                if (num != null && i12 == num.intValue()) {
                    break;
                }
            }
        }
        ActivityManager.AppTask appTask2 = (ActivityManager.AppTask) next;
        if (appTask2 != null) {
            appTask2.finishAndRemoveTask();
        }
    }

    public static /* synthetic */ void removeTask$default(ActivityTaskManager activityTaskManager, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = -1;
        }
        activityTaskManager.removeTask(num);
    }

    public final boolean checkOpenMutipleTask() {
        IPackageConfig iPackageConfig = (IPackageConfig) TmcProxy.get(IPackageConfig.class);
        return (iPackageConfig == null || !iPackageConfig.getOpenMutipleTask() || getMaxTaskNum() == 0) ? false : true;
    }

    public final int getMaxTaskNum() {
        try {
            return ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigInt(LauncherMiniAppConfigHelper.KEY_MINI_MUTIPLE_TASK, 2);
        } catch (Exception e11) {
            TmcLogger.e(TAG, e11);
            return 0;
        }
    }

    public final boolean isActivite(@Nullable String str) {
        WeakReference<MiniAppActivity> weakReference;
        MiniAppActivity miniAppActivity;
        return (!checkOpenMutipleTask() || str == null || str.length() == 0 || (weakReference = activityTaskCache.get(str)) == null || (miniAppActivity = weakReference.get()) == null || miniAppActivity.isFinishing() || miniAppActivity.isDestroyed()) ? false : true;
    }

    public final void putActivityTask(MiniAppActivity miniAppActivity) {
        String strPoll;
        MiniAppActivity miniAppActivity2;
        if (checkOpenMutipleTask()) {
            int maxTaskNum = getMaxTaskNum();
            Lock lock = writeLock;
            lock.lock();
            try {
                if (miniAppActivity != null) {
                    try {
                        String taskTag = miniAppActivity.getTaskTag();
                        if (taskTag != null) {
                            ConcurrentHashMap<String, WeakReference<MiniAppActivity>> concurrentHashMap = activityTaskCache;
                            if (concurrentHashMap.containsKey(taskTag)) {
                                ConcurrentHashMap<String, Integer> concurrentHashMap2 = taskIdCache;
                                Integer num = concurrentHashMap2.get(taskTag);
                                if (num == null) {
                                    num = -1;
                                }
                                removeTask(num);
                                ConcurrentLinkedQueue<String> concurrentLinkedQueue = activityQueue;
                                concurrentLinkedQueue.remove(taskTag);
                                concurrentLinkedQueue.add(taskTag);
                                concurrentHashMap.put(taskTag, new WeakReference<>(miniAppActivity));
                                concurrentHashMap2.put(taskTag, Integer.valueOf(miniAppActivity.getTaskId()));
                                lock.unlock();
                                return;
                            }
                            if (concurrentHashMap.size() >= maxTaskNum && (strPoll = activityQueue.poll()) != null) {
                                WeakReference<MiniAppActivity> weakReference = concurrentHashMap.get(strPoll);
                                if (weakReference != null && (miniAppActivity2 = weakReference.get()) != null) {
                                    INSTANCE.finishActivity(miniAppActivity2);
                                }
                                concurrentHashMap.remove(strPoll);
                                Integer num2 = taskIdCache.get(strPoll);
                                if (num2 == null) {
                                    num2 = -1;
                                }
                                removeTask(num2);
                            }
                            activityQueue.add(taskTag);
                            taskIdCache.put(taskTag, Integer.valueOf(miniAppActivity.getTaskId()));
                            concurrentHashMap.put(taskTag, new WeakReference<>(miniAppActivity));
                            lock.unlock();
                            return;
                        }
                    } catch (Exception e11) {
                        TmcLogger.e(TAG, e11);
                        writeLock.unlock();
                        return;
                    }
                }
                lock.unlock();
            } catch (Throwable th2) {
                writeLock.unlock();
                throw th2;
            }
        }
    }

    public final void refreshTaskQueue(@Nullable MiniAppActivity miniAppActivity) {
        if (getMaxTaskNum() == 0) {
            return;
        }
        Lock lock = writeLock;
        lock.lock();
        if (miniAppActivity != null) {
            try {
                try {
                    String taskTag = miniAppActivity.getTaskTag();
                    if (taskTag != null && activityTaskCache.containsKey(taskTag)) {
                        ConcurrentLinkedQueue<String> concurrentLinkedQueue = activityQueue;
                        concurrentLinkedQueue.remove(taskTag);
                        concurrentLinkedQueue.add(taskTag);
                        lock.unlock();
                        return;
                    }
                } catch (Exception e11) {
                    TmcLogger.e(TAG, e11);
                    writeLock.unlock();
                    return;
                }
            } catch (Throwable th2) {
                writeLock.unlock();
                throw th2;
            }
        }
        lock.unlock();
    }

    public final void removeActivityTask(MiniAppActivity miniAppActivity) {
        String taskTag;
        if (checkOpenMutipleTask()) {
            Lock lock = writeLock;
            lock.lock();
            if (miniAppActivity == null || (taskTag = miniAppActivity.getTaskTag()) == null) {
                return;
            }
            int taskId = miniAppActivity.getTaskId();
            try {
                try {
                    finishActivity(miniAppActivity);
                    if (miniAppActivity.isDestroyed() && miniAppActivity.isFinishing()) {
                        activityQueue.remove(taskTag);
                        activityTaskCache.remove(taskTag);
                        removeTask(Integer.valueOf(taskId));
                    }
                    lock.unlock();
                } catch (Exception e11) {
                    TmcLogger.e(TAG, e11);
                    writeLock.unlock();
                }
            } catch (Throwable th2) {
                writeLock.unlock();
                throw th2;
            }
        }
    }

    public final boolean resumeActivity(@Nullable String str) {
        MiniAppBaseActivity activityTask;
        if (str != null && str.length() != 0 && (activityTask = getActivityTask(str)) != null) {
            try {
                if (!activityTask.isFinishing() && !activityTask.isDestroyed()) {
                    Object systemService = activityTask.getApplication().getSystemService("activity");
                    Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                    ((ActivityManager) systemService).moveTaskToFront(activityTask.getTaskId(), 2);
                    return true;
                }
            } catch (Exception e11) {
                TmcLogger.e(TAG, e11);
            }
        }
        return false;
    }
}
