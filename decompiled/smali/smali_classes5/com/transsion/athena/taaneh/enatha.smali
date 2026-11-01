.class Lcom/transsion/athena/taaneh/enatha;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/athena/aatnhe/athena;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/transsion/athena/aatnhe/athena;

    check-cast p2, Lcom/transsion/athena/aatnhe/athena;

    iget p2, p2, Lcom/transsion/athena/aatnhe/athena;->e:I

    iget p1, p1, Lcom/transsion/athena/aatnhe/athena;->e:I

    sub-int/2addr p2, p1

    return p2
.end method
