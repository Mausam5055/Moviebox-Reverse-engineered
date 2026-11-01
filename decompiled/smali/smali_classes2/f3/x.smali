.class public final Lf3/x;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/q0;


# instance fields
.field public final a:I

.field public final b:Lcom/google/common/primitives/ImmutableIntArray;


# direct methods
.method public constructor <init>(I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf3/x;->a:I

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/common/primitives/ImmutableIntArray;->copyOf([I)Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/primitives/ImmutableIntArray;->of()Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lf3/x;->b:Lcom/google/common/primitives/ImmutableIntArray;

    return-void
.end method
