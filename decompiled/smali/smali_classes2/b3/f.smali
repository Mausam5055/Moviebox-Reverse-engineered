.class public final Lb3/f;
.super Lb3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/f$c;,
        Lb3/f$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lb3/b;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lb3/f;->a:Ljava/util/List;

    return-void
.end method

.method static b(Landroidx/media3/common/util/j0;)Lb3/f;
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0}, Lb3/f$c;->a(Landroidx/media3/common/util/j0;)Lb3/f$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lb3/f;

    invoke-direct {p0, v1}, Lb3/f;-><init>(Ljava/util/List;)V

    return-object p0
.end method
