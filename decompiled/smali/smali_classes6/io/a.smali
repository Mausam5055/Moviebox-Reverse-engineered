.class public final Lio/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lio/a;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/a;

    invoke-direct {v0}, Lio/a;-><init>()V

    sput-object v0, Lio/a;->a:Lio/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgo/a;)Ljava/lang/String;
    .locals 2

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lgo/a;->v()Lcom/transsion/player/enum/PlayMimeType;

    move-result-object v0

    sget-object v1, Lcom/transsion/player/enum/PlayMimeType;->DASH:Lcom/transsion/player/enum/PlayMimeType;

    if-ne v0, v1, :cond_0

    const-string p1, "3"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lgo/a;->v()Lcom/transsion/player/enum/PlayMimeType;

    move-result-object v0

    sget-object v1, Lcom/transsion/player/enum/PlayMimeType;->HLS:Lcom/transsion/player/enum/PlayMimeType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lgo/a;->w()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "5"

    goto :goto_0

    :cond_1
    const-string p1, "6"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lgo/a;->j()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgo/c;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lgo/c;->j()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const-string p1, "4"

    goto :goto_0

    :cond_3
    const-string p1, "0"

    :goto_0
    return-object p1
.end method

.method public final b()Z
    .locals 1

    sget-boolean v0, Lio/a;->b:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    sput-boolean p1, Lio/a;->b:Z

    return-void
.end method
