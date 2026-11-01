.class public final Lcom/transsion/baselib/report/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/baselib/report/a;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/baselib/report/a;

    invoke-direct {v0}, Lcom/transsion/baselib/report/a;-><init>()V

    sput-object v0, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    const-string v0, "ORSubtitle"

    sput-object v0, Lcom/transsion/baselib/report/a;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/report/a;->b:Ljava/lang/String;

    return-object v0
.end method
