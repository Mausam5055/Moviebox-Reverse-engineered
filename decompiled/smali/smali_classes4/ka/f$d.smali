.class final Lka/f$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lka/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lka/d;


# direct methods
.method public constructor <init>(ILka/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lka/f$d;->a:I

    iput-object p2, p0, Lka/f$d;->b:Lka/d;

    return-void
.end method


# virtual methods
.method public a(Lka/f$d;)I
    .locals 1

    iget v0, p0, Lka/f$d;->a:I

    iget p1, p1, Lka/f$d;->a:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lka/f$d;

    invoke-virtual {p0, p1}, Lka/f$d;->a(Lka/f$d;)I

    move-result p1

    return p1
.end method
