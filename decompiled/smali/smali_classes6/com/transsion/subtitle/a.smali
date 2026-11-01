.class public final Lcom/transsion/subtitle/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/subtitle/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/subtitle/a;

    invoke-direct {v0}, Lcom/transsion/subtitle/a;-><init>()V

    sput-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "ORSubtitle_v"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "ORSubtitle_v"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
