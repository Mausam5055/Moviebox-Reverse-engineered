.class public final Lbo/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbo/b;

.field private static b:Lbo/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbo/b;

    invoke-direct {v0}, Lbo/b;-><init>()V

    sput-object v0, Lbo/b;->a:Lbo/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbo/d;
    .locals 22

    sget-object v0, Lbo/b;->b:Lbo/d;

    if-nez v0, :cond_0

    new-instance v0, Lbo/d;

    move-object v1, v0

    sget-object v2, Lcom/transsion/player/config/RenderType;->SURFACE_VIEW:Lcom/transsion/player/config/RenderType;

    const v20, 0xfffe

    const/16 v21, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, ""

    invoke-direct/range {v1 .. v21}, Lbo/d;-><init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbo/b;->b:Lbo/d;

    :cond_0
    sget-object v0, Lbo/b;->b:Lbo/d;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b()Z
    .locals 2

    sget-object v0, Lbo/b;->b:Lbo/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbo/d;->p()Lcom/transsion/player/config/RenderType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/transsion/player/config/RenderType;->SURFACE_VIEW:Lcom/transsion/player/config/RenderType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Lbo/b;->b:Lbo/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbo/d;->j()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final d(Lbo/d;)V
    .locals 0

    sput-object p1, Lbo/b;->b:Lbo/d;

    return-void
.end method
