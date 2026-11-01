.class public final Lcom/transsion/subroom/deeplink/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/subroom/deeplink/b;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/subroom/deeplink/b;

    invoke-direct {v0}, Lcom/transsion/subroom/deeplink/b;-><init>()V

    sput-object v0, Lcom/transsion/subroom/deeplink/b;->a:Lcom/transsion/subroom/deeplink/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/subroom/deeplink/b;->b:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    sput-boolean p1, Lcom/transsion/subroom/deeplink/b;->b:Z

    return-void
.end method
