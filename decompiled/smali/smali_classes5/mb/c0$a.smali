.class Lmb/c0$a;
.super Ljava/lang/Object;

# interfaces
.implements Lfc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lfc/c;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lfc/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/c0$a;->a:Ljava/util/Set;

    iput-object p2, p0, Lmb/c0$a;->b:Lfc/c;

    return-void
.end method
