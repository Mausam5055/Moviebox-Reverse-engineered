.class Landroidx/emoji2/text/h$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/emoji2/text/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/emoji2/text/t;

.field private final b:Landroidx/emoji2/text/EmojiCompat$i;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/t;Landroidx/emoji2/text/EmojiCompat$i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/h$b;->a:Landroidx/emoji2/text/t;

    iput-object p2, p0, Landroidx/emoji2/text/h$b;->b:Landroidx/emoji2/text/EmojiCompat$i;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/emoji2/text/h$b;->c()Landroidx/emoji2/text/t;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/p;)Z
    .locals 3

    invoke-virtual {p4}, Landroidx/emoji2/text/p;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/h$b;->a:Landroidx/emoji2/text/t;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/emoji2/text/t;

    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/text/Spannable;

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v2

    :goto_0
    invoke-direct {v0, p1}, Landroidx/emoji2/text/t;-><init>(Landroid/text/Spannable;)V

    iput-object v0, p0, Landroidx/emoji2/text/h$b;->a:Landroidx/emoji2/text/t;

    :cond_2
    iget-object p1, p0, Landroidx/emoji2/text/h$b;->b:Landroidx/emoji2/text/EmojiCompat$i;

    invoke-interface {p1, p4}, Landroidx/emoji2/text/EmojiCompat$i;->a(Landroidx/emoji2/text/p;)Landroidx/emoji2/text/i;

    move-result-object p1

    iget-object p4, p0, Landroidx/emoji2/text/h$b;->a:Landroidx/emoji2/text/t;

    const/16 v0, 0x21

    invoke-virtual {p4, p1, p2, p3, v0}, Landroidx/emoji2/text/t;->setSpan(Ljava/lang/Object;III)V

    return v1
.end method

.method public c()Landroidx/emoji2/text/t;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/h$b;->a:Landroidx/emoji2/text/t;

    return-object v0
.end method
