.class public abstract Landroidx/emoji2/text/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/d$a;,
        Landroidx/emoji2/text/d$b;,
        Landroidx/emoji2/text/d$d;,
        Landroidx/emoji2/text/d$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Landroidx/emoji2/text/j;
    .locals 2

    new-instance v0, Landroidx/emoji2/text/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/emoji2/text/d$a;-><init>(Landroidx/emoji2/text/d$b;)V

    invoke-virtual {v0, p0}, Landroidx/emoji2/text/d$a;->c(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat$c;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/j;

    return-object p0
.end method
