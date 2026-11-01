.class public final Lcom/transsion/startup/pref/anr/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/startup/pref/anr/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/startup/pref/anr/c;

    invoke-direct {v0}, Lcom/transsion/startup/pref/anr/c;-><init>()V

    sput-object v0, Lcom/transsion/startup/pref/anr/c;->a:Lcom/transsion/startup/pref/anr/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zxb_log_consume"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
