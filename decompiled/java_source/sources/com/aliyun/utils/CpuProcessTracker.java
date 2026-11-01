package com.aliyun.utils;

import android.os.Build;
import android.os.Process;
import com.cicada.player.utils.Logger;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class CpuProcessTracker {
    private static String TAG = "CpuProcessTracker";
    private int mMyPidPercent;

    private interface RuntimeCallback {
        void onLine(String str);
    }

    CpuProcessTracker() {
        new Thread(new Runnable() { // from class: com.aliyun.utils.CpuProcessTracker.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                CpuProcessTracker.this.updateCpuUsage();
            }
        }).start();
    }

    public static int getCPUCoresNum() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: com.aliyun.utils.CpuProcessTracker.1CpuFilter
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return Pattern.matches("cpu[0-9]", file.getName());
                }
            }).length;
        } catch (Exception unused) {
            return 1;
        }
    }

    private void getCpuUsageAfter25() throws Throwable {
        runtimeExec("top -p " + Process.myPid() + " -o %CPU", new RuntimeCallback() { // from class: com.aliyun.utils.CpuProcessTracker.3
            @Override // com.aliyun.utils.CpuProcessTracker.RuntimeCallback
            public void onLine(String str) {
                try {
                    CpuProcessTracker.this.mMyPidPercent = (int) (Float.parseFloat(str) / CpuProcessTracker.getCPUCoresNum());
                    Logger.v(CpuProcessTracker.TAG, "getCpuUsageAfter25 mMyPidPercent update " + CpuProcessTracker.this.mMyPidPercent);
                } catch (Exception unused) {
                }
            }
        });
    }

    private void getCpuUsageBefore26() throws Throwable {
        runtimeExec(IntegrationConstants.TAB_BAR_POSITION_TOP, new RuntimeCallback() { // from class: com.aliyun.utils.CpuProcessTracker.2
            int cpuValueIndex = -1;

            @Override // com.aliyun.utils.CpuProcessTracker.RuntimeCallback
            public void onLine(String str) {
                LinkedList linkedListTrim;
                if (!str.contains(Process.myPid() + "") || (linkedListTrim = CpuProcessTracker.trim(str.split(" "))) == null) {
                    return;
                }
                if (this.cpuValueIndex < 0) {
                    for (int i11 = 0; i11 < linkedListTrim.size(); i11++) {
                        if (((String) linkedListTrim.get(i11)).contains("%")) {
                            this.cpuValueIndex = i11;
                            break;
                        }
                    }
                }
                int i12 = this.cpuValueIndex;
                if (i12 < 0) {
                    Logger.v(CpuProcessTracker.TAG, "getCpuUsageBefore26 unknow ");
                    return;
                }
                String strSubstring = (String) linkedListTrim.get(i12);
                if (strSubstring.contains("%")) {
                    strSubstring = strSubstring.substring(0, strSubstring.indexOf("%"));
                }
                try {
                    CpuProcessTracker.this.mMyPidPercent = (int) Float.parseFloat(strSubstring);
                    Logger.v(CpuProcessTracker.TAG, "getCpuUsageBefore26 mMyPidPercent update " + CpuProcessTracker.this.mMyPidPercent);
                } catch (Exception unused) {
                }
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:29:0x004a A[Catch: all -> 0x0052, TryCatch #2 {all -> 0x0052, blocks: (B:27:0x0045, B:29:0x004a, B:31:0x004f), top: B:45:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x004f A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #2 {all -> 0x0052, blocks: (B:27:0x0045, B:29:0x004a, B:31:0x004f), top: B:45:0x0045 }] */
    private void runtimeExec(String str, RuntimeCallback runtimeCallback) throws Throwable {
        Process processExec;
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader = null;
        try {
            try {
                processExec = Runtime.getRuntime().exec(str);
                try {
                    InputStreamReader inputStreamReader2 = new InputStreamReader(processExec.getInputStream());
                    try {
                        bufferedReader = new BufferedReader(inputStreamReader2);
                        while (true) {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                } else if (runtimeCallback != null) {
                                    runtimeCallback.onLine(line);
                                }
                            } catch (Exception unused) {
                                inputStreamReader = inputStreamReader2;
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                if (processExec == null) {
                                    return;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                inputStreamReader = inputStreamReader2;
                                if (inputStreamReader != null) {
                                    try {
                                        inputStreamReader.close();
                                        if (bufferedReader != null) {
                                            bufferedReader.close();
                                        }
                                        if (processExec != null) {
                                            processExec.destroy();
                                        }
                                    } catch (Throwable unused2) {
                                        throw th;
                                    }
                                } else {
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (processExec != null) {
                                        processExec.destroy();
                                    }
                                }
                                throw th;
                            }
                        }
                        inputStreamReader2.close();
                        bufferedReader.close();
                    } catch (Exception unused3) {
                        bufferedReader = null;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader = null;
                    }
                } catch (Exception unused4) {
                    bufferedReader = null;
                } catch (Throwable th4) {
                    th = th4;
                    bufferedReader = null;
                }
            } catch (Throwable unused5) {
                return;
            }
        } catch (Exception unused6) {
            processExec = null;
            bufferedReader = null;
        } catch (Throwable th5) {
            th = th5;
            processExec = null;
            bufferedReader = null;
        }
        processExec.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LinkedList<String> trim(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        LinkedList<String> linkedList = new LinkedList<>();
        int length = strArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (!strArr[i11].trim().equals("")) {
                linkedList.add(strArr[i11]);
            }
        }
        return linkedList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCpuUsage() throws Throwable {
        if (Build.VERSION.SDK_INT > 25) {
            getCpuUsageAfter25();
        } else {
            getCpuUsageBefore26();
        }
    }

    int getMyPicCpuPercent() {
        Logger.d(TAG, "getMyPicCpuPercent = " + this.mMyPidPercent);
        return this.mMyPidPercent;
    }
}
