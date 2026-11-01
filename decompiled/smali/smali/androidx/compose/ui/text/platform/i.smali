.class final Landroidx/compose/ui/text/platform/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/platform/l;


# instance fields
.field private a:Landroidx/compose/runtime/a3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/i;->c()Landroidx/compose/runtime/a3;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/text/platform/i;->a:Landroidx/compose/runtime/a3;

    return-void
.end method

.method public static final synthetic b(Landroidx/compose/ui/text/platform/i;Landroidx/compose/runtime/a3;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/platform/i;->a:Landroidx/compose/runtime/a3;

    return-void
.end method

.method private final c()Landroidx/compose/runtime/a3;
    .locals 4

    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->c()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Landroidx/compose/ui/text/platform/n;

    invoke-direct {v0, v2}, Landroidx/compose/ui/text/platform/n;-><init>(Z)V

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v1

    new-instance v2, Landroidx/compose/ui/text/platform/i$a;

    invoke-direct {v2, v1, p0}, Landroidx/compose/ui/text/platform/i$a;-><init>(Landroidx/compose/runtime/i1;Landroidx/compose/ui/text/platform/i;)V

    invoke-virtual {v0, v2}, Landroidx/emoji2/text/EmojiCompat;->t(Landroidx/emoji2/text/EmojiCompat$f;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/compose/runtime/a3;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/i;->a:Landroidx/compose/runtime/a3;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/i;->c()Landroidx/compose/runtime/a3;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/platform/i;->a:Landroidx/compose/runtime/a3;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/compose/ui/text/platform/m;->a()Landroidx/compose/ui/text/platform/n;

    move-result-object v0

    :goto_0
    return-object v0
.end method
