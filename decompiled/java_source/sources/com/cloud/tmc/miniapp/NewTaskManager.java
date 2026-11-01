package com.cloud.tmc.miniapp;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.service.EnvironmentService;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.process.AppRecord;
import com.cloud.tmc.miniapp.ui.multiprogress.MiniAppMiniProcessActivity;
import com.cloud.tmc.miniapp.ui.multiprogress.MiniSubActivity1;
import com.cloud.tmc.miniapp.ui.multiprogress.MiniSubActivity2;
import com.cloud.tmc.miniapp.ui.multiprogress.MiniSubActivity3;
import com.cloud.tmc.miniapp.ui.multiprogress.MiniSubActivity4;
import com.cloud.tmc.miniutils.util.ActivityUtils;
import com.cloud.tmc.miniutils.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class NewTaskManager {
    public static final String KEY_APM_PRELAUNCH_PROCESS = "PreLaunchProcess";
    public static final String KEY_APM_PRELAUNCH_PROCESS_PHASE = "PreLaunchProcessPhase";
    public static final String KEY_PROCESS_MESSAGE = "processMessage";
    private static final String TAG = "NewTaskManager";
    public static final String UNKNOWN_PROCESS = "unknown process";
    private boolean isInitNativeStorage;
    public static final Companion Companion = new Companion(null);
    private static final Lazy<NewTaskManager> instance$delegate = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<NewTaskManager>() { // from class: com.cloud.tmc.miniapp.NewTaskManager$Companion$instance$2
        @Override // kotlin.jvm.functions.Function0
        public final NewTaskManager invoke() {
            return new NewTaskManager(null);
        }
    });
    private static final Lazy<Boolean> enableTaskStorage$delegate = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<Boolean>() { // from class: com.cloud.tmc.miniapp.NewTaskManager$Companion$enableTaskStorage$2
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            boolean configTargetBool = true;
            try {
                configTargetBool = MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_MINI_ENABLE_TASK_STORAGE, true);
            } catch (Throwable unused) {
            }
            return Boolean.valueOf(configTargetBool);
        }
    });
    private static final List<ProcessInfo> sProcessInfos = new ArrayList();
    private static final ConcurrentLinkedQueue<TaskModel> taskQueue = new ConcurrentLinkedQueue<>();
    private static int sMaxIdleProcessNum = 1;

    public static final class ActivityInfo {
        private Class<? extends MiniAppMiniProcessActivity> activityClazz;
        private String mProcessName;
        private Void serviceClazz;

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof ActivityInfo)) {
                return false;
            }
            ActivityInfo activityInfo = (ActivityInfo) obj;
            return Intrinsics.c(this.activityClazz, activityInfo.activityClazz) && Intrinsics.c(this.serviceClazz, activityInfo.serviceClazz) && Intrinsics.c(this.mProcessName, activityInfo.mProcessName);
        }

        public final Class<? extends MiniAppMiniProcessActivity> getActivityClazz() {
            return this.activityClazz;
        }

        public final String getMProcessName() {
            return this.mProcessName;
        }

        public final Void getServiceClazz() {
            return this.serviceClazz;
        }

        public final void setActivityClazz(Class<? extends MiniAppMiniProcessActivity> cls) {
            this.activityClazz = cls;
        }

        public final void setMProcessName(String str) {
            this.mProcessName = str;
        }

        public final void setServiceClazz(Void r11) {
            this.serviceClazz = r11;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int getCurrentIdleProcessNum() {
            ProcessInfo.Companion companion = ProcessInfo.Companion;
            return getCurrentProcessNumByStatus(companion.getSTATUS_PROCESS_IDLE()) + getCurrentProcessNumByStatus(companion.getSTATUS_PROCESS_LAST_USED());
        }

        private final int getCurrentProcessNumByStatus(int i11) {
            Iterator it = NewTaskManager.sProcessInfos.iterator();
            int i12 = 0;
            while (it.hasNext()) {
                if (((ProcessInfo) it.next()).getMStatus() == i11) {
                    i12++;
                }
            }
            return i12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int getCurrentRunningProcessNum() {
            return getCurrentProcessNumByStatus(ProcessInfo.Companion.getSTATUS_PROCESS_RUNNING());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean getEnableTaskStorage() {
            return ((Boolean) NewTaskManager.enableTaskStorage$delegate.getValue()).booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void resetProcessInfoToStatus(ProcessInfo processInfo, int i11) {
            if (processInfo != null) {
                processInfo.setMAppId(null);
            }
            if (processInfo != null) {
                processInfo.setMAppToken(0L);
            }
            if (processInfo == null) {
                return;
            }
            processInfo.setMStatus(i11);
        }

        public final NewTaskManager getInstance() {
            return (NewTaskManager) NewTaskManager.instance$delegate.getValue();
        }

        public final void updateTaskIdByAppId(String str, int i11) {
            if (getInstance().checkOpenMutipleTask(str) && !getInstance().checkFeedBackApp(str)) {
                int i12 = 0;
                for (ProcessInfo processInfo : NewTaskManager.sProcessInfos) {
                    if (!TextUtils.isEmpty(str) && Intrinsics.c(str, processInfo.getMAppId())) {
                        processInfo.setTaskId(i11);
                        if (getEnableTaskStorage()) {
                            KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
                            Application app = Utils.getApp();
                            String str2 = "miniapp_task_info_" + i12;
                            if (str == null) {
                                str = "";
                            }
                            kVStorageProxy.putString(app, TmcConstants.KEY_MINI_SDK_STORAGE, str2, str);
                            TmcLogger.d(NewTaskManager.TAG, "saveUpdateTaskIdByAppId:" + processInfo.getMAppId());
                            return;
                        }
                        return;
                    }
                    i12++;
                }
            }
        }
    }

    public static final class ProcessInfo {
        private static int STATUS_PROCESS_DEAD;
        private ActivityInfo mActivityInfo;
        private String mAppId;
        private long mAppToken;
        private int mStatus;
        private int taskId;
        public static final Companion Companion = new Companion(null);
        private static int STATUS_PROCESS_IDLE = 1;
        private static int STATUS_PROCESS_RUNNING = 2;
        private static int STATUS_PROCESS_BACKGROUND = 3;
        private static int STATUS_PROCESS_WAIT_RELEASE = 4;
        private static int STATUS_PROCESS_LAST_USED = 5;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int getSTATUS_PROCESS_BACKGROUND() {
                return ProcessInfo.STATUS_PROCESS_BACKGROUND;
            }

            public final int getSTATUS_PROCESS_DEAD() {
                return ProcessInfo.STATUS_PROCESS_DEAD;
            }

            public final int getSTATUS_PROCESS_IDLE() {
                return ProcessInfo.STATUS_PROCESS_IDLE;
            }

            public final int getSTATUS_PROCESS_LAST_USED() {
                return ProcessInfo.STATUS_PROCESS_LAST_USED;
            }

            public final int getSTATUS_PROCESS_RUNNING() {
                return ProcessInfo.STATUS_PROCESS_RUNNING;
            }

            public final int getSTATUS_PROCESS_WAIT_RELEASE() {
                return ProcessInfo.STATUS_PROCESS_WAIT_RELEASE;
            }

            public final void setSTATUS_PROCESS_BACKGROUND(int i11) {
                ProcessInfo.STATUS_PROCESS_BACKGROUND = i11;
            }

            public final void setSTATUS_PROCESS_DEAD(int i11) {
                ProcessInfo.STATUS_PROCESS_DEAD = i11;
            }

            public final void setSTATUS_PROCESS_IDLE(int i11) {
                ProcessInfo.STATUS_PROCESS_IDLE = i11;
            }

            public final void setSTATUS_PROCESS_LAST_USED(int i11) {
                ProcessInfo.STATUS_PROCESS_LAST_USED = i11;
            }

            public final void setSTATUS_PROCESS_RUNNING(int i11) {
                ProcessInfo.STATUS_PROCESS_RUNNING = i11;
            }

            public final void setSTATUS_PROCESS_WAIT_RELEASE(int i11) {
                ProcessInfo.STATUS_PROCESS_WAIT_RELEASE = i11;
            }
        }

        public ProcessInfo(ActivityInfo activityInfo) {
            Intrinsics.h(activityInfo, "activityInfo");
            this.mStatus = STATUS_PROCESS_DEAD;
            this.mActivityInfo = activityInfo;
        }

        public final ActivityInfo getMActivityInfo() {
            return this.mActivityInfo;
        }

        public final String getMAppId() {
            return this.mAppId;
        }

        public final long getMAppToken() {
            return this.mAppToken;
        }

        public final int getMStatus() {
            return this.mStatus;
        }

        public final int getTaskId() {
            return this.taskId;
        }

        public final void setMActivityInfo(ActivityInfo activityInfo) {
            Intrinsics.h(activityInfo, "<set-?>");
            this.mActivityInfo = activityInfo;
        }

        public final void setMAppId(String str) {
            this.mAppId = str;
        }

        public final void setMAppToken(long j11) {
            this.mAppToken = j11;
        }

        public final void setMStatus(int i11) {
            this.mStatus = i11;
        }

        public final void setTaskId(int i11) {
            this.taskId = i11;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("ProcessInfo:");
            sb2.append(this.mActivityInfo.getMProcessName());
            sb2.append(",activityName:");
            Class<? extends MiniAppMiniProcessActivity> activityClazz = this.mActivityInfo.getActivityClazz();
            sb2.append(activityClazz != null ? activityClazz.getSimpleName() : null);
            sb2.append(",status:");
            sb2.append(this.mStatus);
            sb2.append(",appId:");
            sb2.append(this.mAppId);
            sb2.append(",apptoken:");
            sb2.append(this.mAppToken);
            String string = sb2.toString();
            Intrinsics.g(string, "builder.append(mActivity…end(mAppToken).toString()");
            return string;
        }
    }

    public static final class TaskModel extends BaseBean {
        private String childAppId;
        private String rootAppId;

        public TaskModel(String rootAppId, String childAppId) {
            Intrinsics.h(rootAppId, "rootAppId");
            Intrinsics.h(childAppId, "childAppId");
            this.rootAppId = rootAppId;
            this.childAppId = childAppId;
        }

        public /* synthetic */ TaskModel(String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i11 & 2) != 0 ? "" : str2);
        }

        public static /* synthetic */ TaskModel copy$default(TaskModel taskModel, String str, String str2, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = taskModel.rootAppId;
            }
            if ((i11 & 2) != 0) {
                str2 = taskModel.childAppId;
            }
            return taskModel.copy(str, str2);
        }

        public final String component1() {
            return this.rootAppId;
        }

        public final String component2() {
            return this.childAppId;
        }

        public final TaskModel copy(String rootAppId, String childAppId) {
            Intrinsics.h(rootAppId, "rootAppId");
            Intrinsics.h(childAppId, "childAppId");
            return new TaskModel(rootAppId, childAppId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TaskModel)) {
                return false;
            }
            TaskModel taskModel = (TaskModel) obj;
            return Intrinsics.c(this.rootAppId, taskModel.rootAppId) && Intrinsics.c(this.childAppId, taskModel.childAppId);
        }

        public final String getChildAppId() {
            return this.childAppId;
        }

        public final String getRootAppId() {
            return this.rootAppId;
        }

        public int hashCode() {
            return this.childAppId.hashCode() + (this.rootAppId.hashCode() * 31);
        }

        public final void setChildAppId(String str) {
            Intrinsics.h(str, "<set-?>");
            this.childAppId = str;
        }

        public final void setRootAppId(String str) {
            Intrinsics.h(str, "<set-?>");
            this.rootAppId = str;
        }

        public String toString() {
            return "TaskModel(rootAppId=" + this.rootAppId + ", childAppId=" + this.childAppId + ")";
        }
    }

    private NewTaskManager() {
        ActivityInfo activityInfo = new ActivityInfo();
        activityInfo.setActivityClazz(MiniSubActivity1.class);
        activityInfo.setMProcessName(":mini");
        ProcessInfo processInfo = new ProcessInfo(activityInfo);
        List<ProcessInfo> list = sProcessInfos;
        list.add(processInfo);
        ActivityInfo activityInfo2 = new ActivityInfo();
        activityInfo2.setActivityClazz(MiniSubActivity2.class);
        activityInfo2.setMProcessName(":mini");
        list.add(new ProcessInfo(activityInfo2));
        ActivityInfo activityInfo3 = new ActivityInfo();
        activityInfo3.setActivityClazz(MiniSubActivity3.class);
        activityInfo3.setMProcessName(":mini");
        list.add(new ProcessInfo(activityInfo3));
        ActivityInfo activityInfo4 = new ActivityInfo();
        activityInfo4.setActivityClazz(MiniSubActivity4.class);
        activityInfo4.setMProcessName(":mini");
        list.add(new ProcessInfo(activityInfo4));
    }

    public /* synthetic */ NewTaskManager(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final void clearIdleProcess(boolean z10) {
        synchronized (Companion.getInstance()) {
            try {
                for (ProcessInfo processInfo : sProcessInfos) {
                    if (processInfo.getMStatus() == ProcessInfo.Companion.getSTATUS_PROCESS_IDLE() && (z10 || Companion.getCurrentIdleProcessNum() > sMaxIdleProcessNum)) {
                        releaseProcess(processInfo);
                    }
                }
                for (ProcessInfo processInfo2 : sProcessInfos) {
                    if (processInfo2.getMStatus() == ProcessInfo.Companion.getSTATUS_PROCESS_LAST_USED() && (z10 || Companion.getCurrentIdleProcessNum() > sMaxIdleProcessNum)) {
                        releaseProcess(processInfo2);
                    }
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void finishActivityTask(Class<?> cls) {
        try {
            Activity topActivity = ActivityUtils.getTopActivity();
            if (Intrinsics.c(cls != null ? cls.getSimpleName() : null, topActivity != null ? topActivity.getClass().getSimpleName() : null)) {
                topActivity.finishAndRemoveTask();
                return;
            }
            if (cls == null) {
                cls = null;
            }
            if (cls != null) {
                ActivityUtils.finishActivity((Class<? extends Activity>) cls);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    private final ProcessInfo getFirstDeadProcess() {
        return getFirstProcessByStatus(ProcessInfo.Companion.getSTATUS_PROCESS_DEAD());
    }

    private final ProcessInfo getFirstProcessByStatus(int i11) {
        for (ProcessInfo processInfo : sProcessInfos) {
            if (processInfo.getMStatus() == i11) {
                return processInfo;
            }
        }
        return null;
    }

    private final ProcessInfo getFirstRunningProcess() {
        return getFirstProcessByStatus(ProcessInfo.Companion.getSTATUS_PROCESS_RUNNING());
    }

    private final ActivityInfo getNextLaunchActivityInfo() {
        ActivityInfo mActivityInfo;
        Companion companion = Companion;
        synchronized (companion.getInstance()) {
            try {
                if (getMaxTaskNum() == 0) {
                    TmcLogger.d(TAG, "getNextLaunchActivityInfo finish");
                    printStatus();
                    return null;
                }
                ProcessInfo firstLastUsedProcess = getFirstLastUsedProcess();
                if (firstLastUsedProcess != null) {
                    ActivityInfo mActivityInfo2 = firstLastUsedProcess.getMActivityInfo();
                    TmcLogger.d(TAG, "Use last process: " + getProcessFullName(firstLastUsedProcess));
                    TmcLogger.d(TAG, "getNextLaunchActivityInfo finish");
                    printStatus();
                    return mActivityInfo2;
                }
                ProcessInfo firstIdleProcess = getFirstIdleProcess();
                if (firstIdleProcess != null) {
                    TmcLogger.d(TAG, "Use idle process: " + getProcessFullName(firstIdleProcess));
                    ActivityInfo mActivityInfo3 = firstIdleProcess.getMActivityInfo();
                    TmcLogger.d(TAG, "getNextLaunchActivityInfo finish");
                    printStatus();
                    return mActivityInfo3;
                }
                ProcessInfo firstDeadProcess = getFirstDeadProcess();
                if (companion.getCurrentRunningProcessNum() < getMaxTaskNum() && firstDeadProcess != null) {
                    TmcLogger.d(TAG, "Use new process: " + getProcessFullName(firstDeadProcess));
                    ActivityInfo mActivityInfo4 = firstDeadProcess.getMActivityInfo();
                    TmcLogger.d(TAG, "getNextLaunchActivityInfo finish");
                    printStatus();
                    return mActivityInfo4;
                }
                ProcessInfo firstRunningProcess = getFirstRunningProcess();
                if (firstRunningProcess != null && (mActivityInfo = firstRunningProcess.getMActivityInfo()) != null) {
                    TmcLogger.d(TAG, "Reuse background info: " + getProcessFullName(firstRunningProcess));
                    TmcLogger.d(TAG, "getNextLaunchActivityInfo finish");
                    printStatus();
                    return mActivityInfo;
                }
                ProcessInfo firstRunningProcess2 = getFirstRunningProcess();
                if (firstRunningProcess2 == null) {
                    TmcLogger.e(TAG, "Error, Can't find container to launch, please Check");
                    TmcLogger.d(TAG, "getNextLaunchActivityInfo finish");
                    printStatus();
                    return null;
                }
                TmcLogger.d(TAG, "Fallback: Reuse info:" + getProcessFullName(firstRunningProcess2));
                ActivityInfo mActivityInfo5 = firstRunningProcess2.getMActivityInfo();
                TmcLogger.d(TAG, "getNextLaunchActivityInfo finish");
                printStatus();
                return mActivityInfo5;
            } catch (Throwable th2) {
                TmcLogger.d(TAG, "getNextLaunchActivityInfo finish");
                printStatus();
                throw th2;
            }
        }
    }

    private final String getProcessFullName(ActivityInfo activityInfo) {
        String mProcessName;
        try {
            String packageName = ((EnvironmentService) TmcProxy.get(EnvironmentService.class)).getApplicationContext().getPackageName();
            if (activityInfo == null || (mProcessName = activityInfo.getMProcessName()) == null) {
                mProcessName = "";
            }
            return packageName + mProcessName;
        } catch (Throwable unused) {
            return UNKNOWN_PROCESS;
        }
    }

    private final String getProcessFullName(ProcessInfo processInfo) {
        return getProcessFullName(processInfo != null ? processInfo.getMActivityInfo() : null);
    }

    private final ProcessInfo getProcessInfoByActivityInfo(ActivityInfo activityInfo) {
        for (ProcessInfo processInfo : sProcessInfos) {
            if (processInfo.getMActivityInfo() == activityInfo) {
                return processInfo;
            }
        }
        return null;
    }

    public static /* synthetic */ void moveToForeground$default(NewTaskManager newTaskManager, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "";
        }
        newTaskManager.moveToForeground(str, str2);
    }

    private final void printStatus() {
    }

    private final synchronized void releaseProcess(ProcessInfo processInfo) {
        if (processInfo != null) {
            processInfo.setMStatus(ProcessInfo.Companion.getSTATUS_PROCESS_WAIT_RELEASE());
        }
    }

    private final boolean removeFromRecentTasksList(Class<?> cls, ProcessInfo processInfo) {
        if (cls == null) {
            TmcLogger.d(TAG, "removeFromRecentTasksList: className null");
            return false;
        }
        try {
            Companion.resetProcessInfoToStatus(processInfo, ProcessInfo.Companion.getSTATUS_PROCESS_DEAD());
        } catch (Throwable unused) {
        }
        try {
            Object systemService = Utils.getApp().getSystemService("activity");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            List<ActivityManager.AppTask> appTasks = ((ActivityManager) systemService).getAppTasks();
            Intrinsics.g(appTasks, "activityManager.appTasks");
            for (ActivityManager.AppTask appTask : appTasks) {
                ActivityManager.RecentTaskInfo taskInfo = appTask.getTaskInfo();
                Intrinsics.g(taskInfo, "appTask.taskInfo");
                String className = null;
                if (taskInfo.baseIntent.getComponent() != null) {
                    String canonicalName = cls.getCanonicalName();
                    ComponentName component = taskInfo.baseIntent.getComponent();
                    if (StringsKt.H(canonicalName, component != null ? component.getClassName() : null, true)) {
                        appTask.finishAndRemoveTask();
                        TmcLogger.d(TAG, "removeFromRecentTasksList: finishAndRemoveTask success");
                        return true;
                    }
                    TmcLogger.d(TAG, "removeFromRecentTasksList: recentTaskInfo null");
                }
                String canonicalName2 = cls.getCanonicalName();
                ComponentName component2 = taskInfo.baseIntent.getComponent();
                if (component2 != null) {
                    className = component2.getClassName();
                }
                TmcLogger.d(TAG, "removeFromRecentTasksList: recentTaskInfo " + canonicalName2 + "," + className);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "removeFromRecentTasksList exception", th2);
            Companion.resetProcessInfoToStatus(processInfo, ProcessInfo.Companion.getSTATUS_PROCESS_DEAD());
            finishActivityTask(cls);
        }
        return false;
    }

    private final void updateConfig() {
        ProcessInfo processInfo;
        String mAppId;
        try {
            if (!Companion.getEnableTaskStorage()) {
                TmcLogger.d(TAG, "init updateTaskInfoConfig:enableTaskStorage is false");
                return;
            }
            Iterator<Integer> it = RangesKt.t(0, getMaxTaskNum()).iterator();
            while (it.hasNext()) {
                int iA = ((IntIterator) it).a();
                String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(Utils.getApp(), TmcConstants.KEY_MINI_SDK_STORAGE, "miniapp_task_info_" + iA);
                if (string != null && string.length() > 0 && ((mAppId = (processInfo = sProcessInfos.get(iA)).getMAppId()) == null || mAppId.length() == 0)) {
                    processInfo.setMAppId(string);
                    TmcLogger.d(TAG, " init updateTaskInfoConfig:MiniappActivity" + (iA + 1) + " -> " + processInfo.getMAppId());
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final void addActivityStack(String str) {
        Object next;
        try {
            if (checkOpenMutipleTask(str)) {
                return;
            }
            Iterator<T> it = taskQueue.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(str, ((TaskModel) next).getRootAppId()));
            TaskModel taskModel = (TaskModel) next;
            if (taskModel != null) {
                taskQueue.remove(taskModel);
            }
            taskQueue.add(new TaskModel(str == null ? "" : str, ""));
            TmcLogger.d(TAG, "addActivityStack: add appId:" + str);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "addActivityStack:" + th2);
        }
    }

    public final void addStack(String appId, long j11, ActivityInfo activityInfo) {
        Intrinsics.h(appId, "appId");
        try {
            if (!checkOpenMutipleTask(appId)) {
                TmcLogger.d(TAG, "addStack finish");
                printStatus();
                return;
            }
            if (activityInfo == null) {
                TmcLogger.d(TAG, "addStack finish");
                printStatus();
                return;
            }
            TmcLogger.d(TAG, "addStack:" + activityInfo.getActivityClazz() + " " + appId);
            ProcessInfo processInfoByActivityInfo = getProcessInfoByActivityInfo(activityInfo);
            if (processInfoByActivityInfo != null) {
                String mAppId = processInfoByActivityInfo.getMAppId();
                if (mAppId != null && !Intrinsics.c(mAppId, appId)) {
                    TmcLogger.d(TAG, "addStack oldAppid:" + mAppId + ",new appId:" + appId);
                    removeFromStack(mAppId, true);
                }
                processInfoByActivityInfo.setMStatus(ProcessInfo.Companion.getSTATUS_PROCESS_RUNNING());
                processInfoByActivityInfo.setMAppId(appId);
                processInfoByActivityInfo.setMAppToken(j11);
            }
            TmcLogger.d(TAG, "addStack finish");
            printStatus();
        } catch (Throwable th2) {
            try {
                TmcLogger.e(TAG, "addStack exception:", th2);
            } finally {
                TmcLogger.d(TAG, "addStack finish");
                printStatus();
            }
        }
    }

    public final boolean checkFeedBackApp(String str) {
        String configString = MiniAppConfigHelper.DEFAULT_MINI_FEEDBACK_ID;
        try {
            configString = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_MINI_FEEDBACK_ID, MiniAppConfigHelper.DEFAULT_MINI_FEEDBACK_ID);
        } catch (Throwable unused) {
        }
        return Intrinsics.c(str, configString) && checkOpenMutipleTask(str);
    }

    public final boolean checkMiniAppServerApp(String str) {
        String configString = TmcConstants.SETTING_MINIAPP_ID;
        try {
            configString = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_MINI_APP_SERVER_ID, TmcConstants.SETTING_MINIAPP_ID);
        } catch (Throwable unused) {
        }
        return Intrinsics.c(str, configString) && checkOpenMutipleTask(str);
    }

    public final boolean checkOpenMutipleTask(String str) {
        IPackageConfig iPackageConfig = (IPackageConfig) TmcProxy.get(IPackageConfig.class);
        return (iPackageConfig == null || !iPackageConfig.getOpenMutipleTask() || getMaxTaskNum() == 0) ? false : true;
    }

    public final void checkRecentTaskList() {
        Class<?> cls;
        try {
            if (getMaxTaskNum() == 0) {
                TmcLogger.d(TAG, "<checkRecentTaskList> getMaxTaskNum == 0, try clean recentTaskList");
                Iterator<Integer> it = RangesKt.t(0, 4).iterator();
                while (it.hasNext()) {
                    int iA = ((IntIterator) it).a();
                    String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(Utils.getApp(), TmcConstants.KEY_MINI_SDK_STORAGE, "miniapp_task_info_" + iA);
                    if (string != null && string.length() > 0) {
                        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(Utils.getApp(), TmcConstants.KEY_MINI_SDK_STORAGE, "miniapp_task_info_" + iA, "");
                        if (iA == 0) {
                            cls = MiniSubActivity1.class;
                        } else if (iA == 1) {
                            cls = MiniSubActivity2.class;
                        } else if (iA != 2) {
                            cls = iA != 3 ? null : MiniSubActivity4.class;
                        } else {
                            cls = MiniSubActivity3.class;
                        }
                        TmcLogger.d(TAG, "<checkRecentTaskList> task_" + iA + " exit, try clean " + cls + " recentTask");
                        if (cls != null) {
                            removeFromRecentTasksList(cls, null);
                        } else {
                            continue;
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "<checkRecentTaskList> error", th2);
        }
    }

    public final void checkTaskId(String str, Class<?> cls) {
        try {
            if (checkOpenMutipleTask(str)) {
                for (ProcessInfo processInfo : sProcessInfos) {
                    Class<? extends MiniAppMiniProcessActivity> activityClazz = processInfo.getMActivityInfo().getActivityClazz();
                    if (Intrinsics.c(activityClazz != null ? activityClazz.getSimpleName() : null, cls != null ? cls.getSimpleName() : null)) {
                        TmcLogger.d(TAG, "checkTaskId:" + processInfo.getMAppId() + "," + (cls != null ? cls.getSimpleName() : null));
                        if (Intrinsics.c(str, processInfo.getMAppId())) {
                            return;
                        }
                        TmcLogger.d(TAG, "removeFromRecentTasksList activity appid:" + str + ",processInfo.mAppId:" + processInfo.getMAppId());
                        if (TextUtils.isEmpty(processInfo.getMAppId())) {
                            TmcLogger.d(TAG, "removeFromRecentTasksList, update");
                            processInfo.setMAppId(str);
                            return;
                        } else {
                            TmcLogger.d(TAG, "removeFromRecentTasksList,remove");
                            removeFromRecentTasksList(cls, processInfo);
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final boolean checkUseSingleTaskMode(String str) {
        return checkFeedBackApp(str);
    }

    public final List<String> getExistAppIds() {
        ArrayList arrayList = new ArrayList();
        for (TaskModel it : taskQueue) {
            if (it != null) {
                Intrinsics.g(it, "it");
                arrayList.add(it.getRootAppId());
            }
        }
        return arrayList;
    }

    public final ProcessInfo getFirstIdleProcess() {
        return getFirstProcessByStatus(ProcessInfo.Companion.getSTATUS_PROCESS_IDLE());
    }

    public final ProcessInfo getFirstLastUsedProcess() {
        return getFirstProcessByStatus(ProcessInfo.Companion.getSTATUS_PROCESS_LAST_USED());
    }

    public final String getForegroundAppId() {
        ConcurrentLinkedQueue<TaskModel> concurrentLinkedQueue = taskQueue;
        if (concurrentLinkedQueue.size() <= 0) {
            return null;
        }
        TaskModel taskModel = (TaskModel) CollectionsKt.t0(concurrentLinkedQueue);
        String childAppId = taskModel.getChildAppId();
        return childAppId.length() == 0 ? taskModel.getRootAppId() : childAppId;
    }

    public final int getMaxTaskNum() {
        try {
            return ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigInt(LauncherMiniAppConfigHelper.KEY_MINI_MUTIPLE_TASK, CommonAppUtils.INSTANCE.getDefaultMultiTaskCount());
        } catch (Exception e11) {
            TmcLogger.e(TAG, e11);
            return 0;
        }
    }

    public final ProcessInfo getProcessInfoByAppId(String appId) {
        Intrinsics.h(appId, "appId");
        for (ProcessInfo processInfo : sProcessInfos) {
            if (!TextUtils.isEmpty(appId) && Intrinsics.c(appId, processInfo.getMAppId())) {
                return processInfo;
            }
        }
        return null;
    }

    public final String getTaskRootAppId() {
        ConcurrentLinkedQueue<TaskModel> concurrentLinkedQueue = taskQueue;
        if (concurrentLinkedQueue.size() > 0) {
            return ((TaskModel) CollectionsKt.t0(concurrentLinkedQueue)).getRootAppId();
        }
        return null;
    }

    public final boolean isInitNativeStorage() {
        return this.isInitNativeStorage;
    }

    public final void moveToForeground(String appId, String childAppId) {
        Object next;
        Intrinsics.h(appId, "appId");
        Intrinsics.h(childAppId, "childAppId");
        if (checkOpenMutipleTask(appId)) {
            synchronized (Companion.getInstance()) {
                try {
                    TmcLogger.d(TAG, "moveToForeground:" + appId);
                    ProcessInfo processInfoByAppId = getProcessInfoByAppId(appId);
                    if (processInfoByAppId != null) {
                        if (processInfoByAppId.getMActivityInfo() != null) {
                            processInfoByAppId.setMStatus(ProcessInfo.Companion.getSTATUS_PROCESS_RUNNING());
                            Iterator<T> it = taskQueue.iterator();
                            do {
                                if (!it.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it.next();
                            } while (!Intrinsics.c(appId, ((TaskModel) next).getRootAppId()));
                            TaskModel taskModel = (TaskModel) next;
                            if (taskModel == null) {
                                taskModel = new TaskModel(appId, childAppId);
                            }
                            taskModel.setChildAppId(childAppId);
                            ConcurrentLinkedQueue<TaskModel> concurrentLinkedQueue = taskQueue;
                            concurrentLinkedQueue.remove(taskModel);
                            concurrentLinkedQueue.add(taskModel);
                        } else {
                            TmcLogger.e(TAG, "moveToForeground:Can't find target in sActivityStack?");
                            Unit unit = Unit.f67061a;
                        }
                    }
                    TmcLogger.d(TAG, "moveToForeground finish");
                } catch (Throwable th2) {
                    try {
                        TmcLogger.e(TAG, "moveToForeground exception:", th2);
                        Unit unit2 = Unit.f67061a;
                        TmcLogger.d(TAG, "moveToForeground finish");
                    } catch (Throwable th3) {
                        TmcLogger.d(TAG, "moveToForeground finish");
                        printStatus();
                        throw th3;
                    }
                }
                printStatus();
            }
        }
    }

    public final ActivityInfo preLaunchActivity(Context context, AppRecord appRecord) {
        Object next;
        String rootAppId;
        Intrinsics.h(context, "context");
        Intrinsics.h(appRecord, "appRecord");
        try {
            checkRecentTaskList();
            if (!checkOpenMutipleTask(appRecord.getAppId()) || checkUseSingleTaskMode(appRecord.getAppId())) {
                return null;
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getNextLaunchActivityInfo error", th2);
        }
        try {
            synchronized (Companion.getInstance()) {
                try {
                    if (!this.isInitNativeStorage) {
                        this.isInitNativeStorage = true;
                        updateConfig();
                    }
                } catch (Throwable th3) {
                    try {
                        TmcLogger.e(TAG, "updateConfig error", th3);
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
                String appId = appRecord.getAppId();
                Iterator<T> it = sProcessInfos.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((ProcessInfo) next).getMAppId(), appId));
                ProcessInfo processInfo = (ProcessInfo) next;
                if (processInfo != null) {
                    TmcLogger.d(TAG, "preLaunchActivity: current activity , appId:" + appId);
                    ActivityInfo mActivityInfo = processInfo.getMActivityInfo();
                    TmcLogger.d(TAG, "preLaunchActivity finish");
                    printStatus();
                    return mActivityInfo;
                }
                int currentRunningProcessNum = Companion.getCurrentRunningProcessNum();
                if (currentRunningProcessNum >= getMaxTaskNum()) {
                    TmcLogger.d(TAG, "currentRunningProcessNum：" + currentRunningProcessNum);
                    TaskModel taskModelPoll = taskQueue.poll();
                    if (taskModelPoll == null || (rootAppId = taskModelPoll.getRootAppId()) == null) {
                        rootAppId = "";
                    }
                    TmcLogger.d(TAG, "oldAppId：" + rootAppId);
                    removeFromStack(rootAppId, true);
                }
                ActivityInfo nextLaunchActivityInfo = getNextLaunchActivityInfo();
                if (nextLaunchActivityInfo == null) {
                    Unit unit = Unit.f67061a;
                    return null;
                }
                addStack(appId, appRecord.getStartToken(), nextLaunchActivityInfo);
                TmcLogger.d(TAG, "preLaunchActivity finish");
                printStatus();
                return nextLaunchActivityInfo;
            }
        } catch (Throwable th5) {
            try {
                TmcLogger.e(TAG, "preLaunchActivity exception:", th5);
            } finally {
                TmcLogger.d(TAG, "preLaunchActivity finish");
                printStatus();
            }
        }
    }

    public final void remoceFromStackFromRecent(String appId) {
        Intrinsics.h(appId, "appId");
        Companion companion = Companion;
        synchronized (companion.getInstance()) {
            if (checkUseSingleTaskMode(appId)) {
                TaskModel taskModelPeek = taskQueue.peek();
                if (Intrinsics.c(taskModelPeek != null ? taskModelPeek.getChildAppId() : null, appId)) {
                    taskModelPeek.setChildAppId("");
                    return;
                }
            }
            ProcessInfo processInfoByAppId = getProcessInfoByAppId(appId);
            if (processInfoByAppId == null) {
                return;
            }
            removeTaskQueue(appId);
            companion.resetProcessInfoToStatus(processInfoByAppId, ProcessInfo.Companion.getSTATUS_PROCESS_DEAD());
            Unit unit = Unit.f67061a;
        }
    }

    public final void removeActivityStack(String str) {
        Object next;
        try {
            if (checkOpenMutipleTask(str)) {
                return;
            }
            Iterator<T> it = taskQueue.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(str, ((TaskModel) next).getRootAppId()));
            TaskModel taskModel = (TaskModel) next;
            if (taskModel != null) {
                taskQueue.remove(taskModel);
            }
            TmcLogger.d(TAG, "removeActivityStack: remove appId:" + str);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void removeFromStack(String appId, boolean z10) {
        Intrinsics.h(appId, "appId");
        Companion companion = Companion;
        synchronized (companion.getInstance()) {
            try {
                if (checkUseSingleTaskMode(appId)) {
                    TaskModel taskModelPeek = taskQueue.peek();
                    if (Intrinsics.c(taskModelPeek != null ? taskModelPeek.getChildAppId() : null, appId)) {
                        taskModelPeek.setChildAppId("");
                        TmcLogger.d(TAG, "removeFromStack finish");
                        printStatus();
                        return;
                    }
                }
                TmcLogger.d(TAG, "removeFromStack:" + appId);
                ProcessInfo processInfoByAppId = getProcessInfoByAppId(appId);
                if (processInfoByAppId == null) {
                    TmcLogger.d(TAG, "removeFromStack finish");
                    printStatus();
                    return;
                }
                String processFullName = getProcessFullName(processInfoByAppId);
                ActivityInfo mActivityInfo = processInfoByAppId.getMActivityInfo();
                if (TextUtils.isEmpty(processFullName) || mActivityInfo == null) {
                    TmcLogger.e(TAG, "removeFromStack:Can't find target in sActivityStack?");
                } else {
                    TmcLogger.d(TAG, "removeFromStack:" + processFullName);
                    removeTaskQueue(appId);
                    removeFromRecentTasksList(mActivityInfo.getActivityClazz(), processInfoByAppId);
                    if (z10) {
                        companion.resetProcessInfoToStatus(processInfoByAppId, ProcessInfo.Companion.getSTATUS_PROCESS_DEAD());
                    } else {
                        ProcessInfo firstLastUsedProcess = getFirstLastUsedProcess();
                        if (firstLastUsedProcess == null || Intrinsics.c(firstLastUsedProcess.getMActivityInfo(), mActivityInfo)) {
                            if ((firstLastUsedProcess == null || !Intrinsics.c(firstLastUsedProcess.getMActivityInfo(), mActivityInfo)) && firstLastUsedProcess == null) {
                                companion.resetProcessInfoToStatus(processInfoByAppId, ProcessInfo.Companion.getSTATUS_PROCESS_LAST_USED());
                            }
                        } else if (companion.getCurrentIdleProcessNum() >= sMaxIdleProcessNum) {
                            releaseProcess(processInfoByAppId);
                        } else {
                            companion.resetProcessInfoToStatus(processInfoByAppId, ProcessInfo.Companion.getSTATUS_PROCESS_IDLE());
                        }
                        clearIdleProcess(false);
                    }
                }
                TmcLogger.d(TAG, "removeFromStack finish");
                printStatus();
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                try {
                    TmcLogger.e(TAG, "removeFromStack exception:", th2);
                    TmcLogger.d(TAG, "removeFromStack finish");
                } catch (Throwable th3) {
                    TmcLogger.d(TAG, "removeFromStack finish");
                    printStatus();
                    throw th3;
                }
            }
        }
    }

    public final void removeTaskQueue(String appId) {
        Intrinsics.h(appId, "appId");
        try {
            for (Object obj : taskQueue) {
                if (Intrinsics.c(appId, ((TaskModel) obj).getRootAppId())) {
                    taskQueue.remove((TaskModel) obj);
                }
            }
            obj = null;
            taskQueue.remove((TaskModel) obj);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public final void setInitNativeStorage(boolean z10) {
        this.isInitNativeStorage = z10;
    }

    public final void updateProcessInfoByAppId(String appId) {
        Object next;
        String childAppId;
        Intrinsics.h(appId, "appId");
        for (ProcessInfo processInfo : sProcessInfos) {
            if (!TextUtils.isEmpty(appId) && Intrinsics.c(appId, processInfo.getMAppId())) {
                Iterator<T> it = taskQueue.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((TaskModel) next).getRootAppId(), appId));
                TaskModel taskModel = (TaskModel) next;
                if (taskModel == null || (childAppId = taskModel.getChildAppId()) == null) {
                    childAppId = "";
                }
                TmcLogger.d(TAG, "current root id -> " + appId + " ,new root id -> " + childAppId);
                if (childAppId.length() > 0) {
                    processInfo.setMAppId(childAppId);
                }
            }
        }
    }
}
