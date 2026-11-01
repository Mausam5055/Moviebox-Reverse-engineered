.class public final Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/render/ILocalChannelProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J1\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0002\u0010\u000cJ1\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp;",
        "Lcom/cloud/tmc/render/ILocalChannelProxy;",
        "()V",
        "gamePerformanceMonitorGetStr",
        "",
        "report",
        "",
        "tag",
        "reportData",
        "reportType",
        "",
        "athenaAppId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "reportForH5",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gamePerformanceMonitorGetStr()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "keyGamePerformanceMonitorStrUseLocal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "eyJodHRwczovL3d3dy5xeXhnYW1lLmNvbS9SZXNjdWVfVGhlX0xvdmVyL2luZGV4Lmh0bWw/dXRtX3NvdXJjZT1sYXVuY2hlcl9pbnN0YW50YXBwODg0NzciOnsidGFyZ2V0RWxlbWVudElkIjoiI2xvYWRpbmciLCJvdmVyYWxsSWRsZUxvYWRUaW1lVEgiOi0xfSwiaHR0cHM6Ly93d3cueGlhb3l0Z2FtZS5jb20vVGVtcGxlUnVuXzIvaW5kZXguaHRtbD91dG1fc291cmNlPWxhdW5jaGVyX2luc3RhbnRhcHA4ODQ3NyI6eyJ0YXJnZXRFbGVtZW50SWQiOiIucHJvZ3Jlc3MtdGV4dCIsInJlbmRlclJlYWR5SWRsZUxvYWRUaW1lVEgiOjk5OSwib3ZlcmFsbElkbGVMb2FkVGltZVRIIjotMX0sImh0dHBzOi8vd3d3Lm9vcHBnYW1lLmNvbS9Qb3VsdHJ5X0Zhcm0vaW5kZXguaHRtbD91dG1fc291cmNlPWxhdW5jaGVyX2luc3RhbnRhcHA4ODE4OCI6eyJ0YXJnZXRWZWN0ZXhQcmVGcmFtZSI6NTAwMCwicmVuZGVyUmVhZHlJZGxlTG9hZFRpbWVUSCI6OTk5LCJvdmVyYWxsSWRsZUxvYWRUaW1lVEgiOi0xfSwiaHR0cHM6Ly93d3cuamx5eWdhbWUuY29tL0NoaWxkcmVuX0RvY3Rvcl9EZW50aXN0L2luZGV4Lmh0bWw/dXRtX3NvdXJjZT1sYXVuY2hlcl9pbnN0YW50YXBwODg0NzciOnsidGFyZ2V0VmVjdGV4UHJlRnJhbWUiOjMwMCwicmVuZGVyUmVhZHlJZGxlTG9hZFRpbWVUSCI6OTk5LCJvdmVyYWxsSWRsZUxvYWRUaW1lVEgiOi0xfSwiaHR0cHM6Ly93d3cuaHpzZGdhbWUuY29tL1BhdGhfQ29sb3JfTGluZS9pbmRleC5odG1sP3V0bV9zb3VyY2U9bGF1bmNoZXJfaW5zdGFudGFwcDg4NDc2NyI6eyJ0YXJnZXRWZWN0ZXhQcmVGcmFtZSI6MzAwLCJyZW5kZXJSZWFkeUlkbGVMb2FkVGltZVRIIjo5OTksIm92ZXJhbGxJZGxlTG9hZFRpbWVUSCI6LTF9LCJodHRwczovL3d3dy5vb3BwZ2FtZS5jb20vQnJpZGdlX0J1aWxkZXIvaW5kZXguaHRtbD91dG1fc291cmNlPWxhdW5jaGVyX2luc3RhbnRhcHA4ODQ3NiI6eyJ0YXJnZXRWZWN0ZXhQcmVGcmFtZSI6MTAwMCwicmVuZGVyUmVhZHlJZGxlTG9hZFRpbWVUSCI6OTk5LCJvdmVyYWxsSWRsZUxvYWRUaW1lVEgiOi0xfSwiaHR0cHM6Ly93d3cuYWZhbnRhaWdhbWUuY29tL0tpbGxlcl9Bc3Nhc3Npbi9pbmRleC5odG1sP3V0bV9zb3VyY2U9bGF1bmNoZXJfaW5zdGFudGFwcDg4NDc2Ijp7InRhcmdldFZlY3RleFByZUZyYW1lIjo1MDAsInJlbmRlclJlYWR5SWRsZUxvYWRUaW1lVEgiOjk5OSwib3ZlcmFsbElkbGVMb2FkVGltZVRIIjotMX0sImh0dHBzOi8vd3d3LmJoamdhbWUuY29tL1N1YndheV9TdXJmZXJfU2VvdWwvaW5kZXguaHRtbD91dG1fc291cmNlPWxhdW5jaGVyX2luc3RhbnRhcHA4ODQ3NyI6eyJ0YXJnZXRWZWN0ZXhQcmVGcmFtZSI6MTAwMDAsInJlbmRlclJlYWR5SWRsZUxvYWRUaW1lVEgiOjk5OSwib3ZlcmFsbElkbGVMb2FkVGltZVRIIjotMX0sImh0dHBzOi8vd3d3LmptYmlsZWdhbWUuY29tL0YxX3J1c2gvaW5kZXguaHRtbCI6eyJ0YXJnZXRWZWN0ZXhQcmVGcmFtZSI6MTAwMDAsInJlbmRlclJlYWR5SWRsZUxvYWRUaW1lVEgiOjk5OSwib3ZlcmFsbElkbGVMb2FkVGltZVRIIjotMX0sImh0dHBzOi8vd3d3LmptYmlsZWdhbWUuY29tL0ljZWNyZWFtL2luZGV4Lmh0bWwiOnsidGFyZ2V0VmVjdGV4UHJlRnJhbWUiOjEyMCwicmVuZGVyUmVhZHlJZGxlTG9hZFRpbWVUSCI6OTk5LCJvdmVyYWxsSWRsZUxvYWRUaW1lVEgiOi0xfSwiaHR0cHM6Ly93d3cuemh4aWFrZW1hb2dhbWUuY29tL0xhc3RfTmlnaHQvaW5kZXguaHRtbD91dG1fc291cmNlPWxhdW5jaGVyX2luc3RhbnRhcHA4ODQ3NyI6eyJ0YXJnZXRWZWN0ZXhQcmVGcmFtZSI6NDUwLCJyZW5kZXJSZWFkeUlkbGVMb2FkVGltZVRIIjo5OTksIm92ZXJhbGxJZGxlTG9hZFRpbWVUSCI6LTF9fQ=="

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "keyGamePerformanceMonitorStr"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class v1, Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tag is empty"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "reportData is empty"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp$report$gson$1;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp$report$gson$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lcom/cloud/tmc/integration/utils/ObjectTypeAdapter;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/ObjectTypeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp$report$_dataMap$1;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp$report$_dataMap$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/cloud/tmc/integration/utils/BundleUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/BundleUtil;

    const-string v1, "_dataMap"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v3}, Lcom/cloud/tmc/integration/utils/BundleUtil;->parse(Ljava/util/Map;Landroid/os/Bundle;)V

    const-class p2, Lcom/cloud/tmc/integration/proxy/ReportFactoryProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/cloud/tmc/integration/proxy/ReportFactoryProxy;

    const-string v1, ""

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/integration/proxy/ReportFactoryProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "report exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public reportForH5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    const-string v0, "reportData is empty"

    const-string v1, "tag is empty"

    const-string v2, "tag"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "reportData"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class v3, Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp;

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/render/method/LocalChannelInterface;->Companion:Lcom/cloud/tmc/render/method/LocalChannelInterface$Companion;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Lcom/cloud/tmc/render/method/LocalChannelInterface$Companion;->reportForH5Fail(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/render/method/LocalChannelInterface;->Companion:Lcom/cloud/tmc/render/method/LocalChannelInterface$Companion;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Lcom/cloud/tmc/render/method/LocalChannelInterface$Companion;->reportForH5Fail(ILjava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp$reportForH5$gson$1;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp$reportForH5$gson$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lcom/cloud/tmc/integration/utils/ObjectTypeAdapter;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/ObjectTypeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp$reportForH5$_dataMap$1;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/defaultImpl/LocalChannelImp$reportForH5$_dataMap$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/cloud/tmc/integration/utils/BundleUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/BundleUtil;

    const-string v1, "_dataMap"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v3}, Lcom/cloud/tmc/integration/utils/BundleUtil;->parse(Ljava/util/Map;Landroid/os/Bundle;)V

    const-class p2, Lcom/cloud/tmc/integration/proxy/ReportFactoryProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/cloud/tmc/integration/proxy/ReportFactoryProxy;

    const-string v1, ""

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/integration/proxy/ReportFactoryProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    sget-object p2, Lcom/cloud/tmc/render/method/LocalChannelInterface;->Companion:Lcom/cloud/tmc/render/method/LocalChannelInterface$Companion;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p2, p3, p1}, Lcom/cloud/tmc/render/method/LocalChannelInterface$Companion;->reportForH5Fail(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
