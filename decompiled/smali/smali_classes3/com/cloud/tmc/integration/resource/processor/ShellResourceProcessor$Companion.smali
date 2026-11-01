.class public final Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor$Companion;",
        "",
        "()V",
        "ASSET_SHELL_JS_BRIDGE_FILE_NAME",
        "",
        "ASSET_SHELL_JS_BRIDGE_FOLDER_NAME",
        "regex",
        "Lkotlin/text/Regex;",
        "getRegex",
        "()Lkotlin/text/Regex;",
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRegex()Lkotlin/text/Regex;
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->access$getRegex$cp()Lkotlin/text/Regex;

    move-result-object v0

    return-object v0
.end method
