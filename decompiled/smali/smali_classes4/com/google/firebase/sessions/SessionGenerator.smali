.class public final Lcom/google/firebase/sessions/SessionGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionGenerator$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/google/firebase/sessions/SessionGenerator$a;


# instance fields
.field private final a:Lcom/google/firebase/sessions/b0;

.field private final b:Lkotlin/jvm/functions/Function0;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/google/firebase/sessions/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/SessionGenerator$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionGenerator$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/SessionGenerator;->f:Lcom/google/firebase/sessions/SessionGenerator$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/sessions/b0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "timeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuidGenerator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/SessionGenerator;->a:Lcom/google/firebase/sessions/b0;

    iput-object p2, p0, Lcom/google/firebase/sessions/SessionGenerator;->b:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Lcom/google/firebase/sessions/SessionGenerator;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/SessionGenerator;->c:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/firebase/sessions/SessionGenerator;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/sessions/b0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/google/firebase/sessions/SessionGenerator$1;->INSTANCE:Lcom/google/firebase/sessions/SessionGenerator$1;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/sessions/SessionGenerator;-><init>(Lcom/google/firebase/sessions/b0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionGenerator;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "uuidGenerator().toString()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "-"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/firebase/sessions/t;
    .locals 8

    iget v0, p0, Lcom/google/firebase/sessions/SessionGenerator;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/sessions/SessionGenerator;->d:I

    new-instance v7, Lcom/google/firebase/sessions/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionGenerator;->c:Ljava/lang/String;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/sessions/SessionGenerator;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/google/firebase/sessions/SessionGenerator;->c:Ljava/lang/String;

    iget v4, p0, Lcom/google/firebase/sessions/SessionGenerator;->d:I

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionGenerator;->a:Lcom/google/firebase/sessions/b0;

    invoke-interface {v0}, Lcom/google/firebase/sessions/b0;->a()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/sessions/t;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    iput-object v7, p0, Lcom/google/firebase/sessions/SessionGenerator;->e:Lcom/google/firebase/sessions/t;

    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionGenerator;->c()Lcom/google/firebase/sessions/t;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/firebase/sessions/t;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionGenerator;->e:Lcom/google/firebase/sessions/t;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "currentSession"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
