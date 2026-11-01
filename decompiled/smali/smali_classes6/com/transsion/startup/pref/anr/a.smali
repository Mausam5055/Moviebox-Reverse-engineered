.class public final Lcom/transsion/startup/pref/anr/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/startup/pref/anr/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/startup/pref/anr/a;

    invoke-direct {v0}, Lcom/transsion/startup/pref/anr/a;-><init>()V

    sput-object v0, Lcom/transsion/startup/pref/anr/a;->a:Lcom/transsion/startup/pref/anr/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "watch_dog_timeout"

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
