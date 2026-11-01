.class public final Lcom/transsion/fission/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/fission/l;

.field private static final b:Lcom/tencent/mmkv/MMKV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/fission/l;

    invoke-direct {v0}, Lcom/transsion/fission/l;-><init>()V

    sput-object v0, Lcom/transsion/fission/l;->a:Lcom/transsion/fission/l;

    const-string v0, "one_room_fission"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sput-object v0, Lcom/transsion/fission/l;->b:Lcom/tencent/mmkv/MMKV;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/fission/l;->b:Lcom/tencent/mmkv/MMKV;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "KEY_FISSION_INVITATION_CODE"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/fission/l;->b:Lcom/tencent/mmkv/MMKV;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "KEY_FISSION_INVITE_REG"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/transsion/fission/l;->b:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_0

    const-string v1, "KEY_FISSION_INVITATION_CODE"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method
