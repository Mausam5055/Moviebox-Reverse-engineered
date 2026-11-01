.class abstract Landroidx/emoji2/text/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/g$a;,
        Landroidx/emoji2/text/g$b;
    }
.end annotation


# direct methods
.method static a()Ljava/util/Set;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroidx/emoji2/text/g$a;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroidx/emoji2/text/g$b;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
