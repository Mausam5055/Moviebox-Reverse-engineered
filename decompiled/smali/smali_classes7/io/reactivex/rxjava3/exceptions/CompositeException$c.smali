.class final Lio/reactivex/rxjava3/exceptions/CompositeException$c;
.super Lio/reactivex/rxjava3/exceptions/CompositeException$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/exceptions/CompositeException$a;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/exceptions/CompositeException$c;->a:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/exceptions/CompositeException$c;->b(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$c;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$c;
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/exceptions/CompositeException$c;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-object p0
.end method
