.class final Lio/reactivex/rxjava3/exceptions/CompositeException$b;
.super Lio/reactivex/rxjava3/exceptions/CompositeException$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/exceptions/CompositeException$a;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/exceptions/CompositeException$b;->a:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/exceptions/CompositeException$b;->b(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$b;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/Object;)Lio/reactivex/rxjava3/exceptions/CompositeException$b;
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/exceptions/CompositeException$b;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    return-object p0
.end method
