.class public Landroidx/datastore/preferences/protobuf/h0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/h0$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/h0$a;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/datastore/preferences/protobuf/h0$a;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/h0$a;-><init>(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/h0;->a:Landroidx/datastore/preferences/protobuf/h0$a;

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/h0;->b:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/datastore/preferences/protobuf/h0;->c:Ljava/lang/Object;

    return-void
.end method

.method static b(Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h0$a;->a:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/s;->b(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/h0$a;->c:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/s;->b(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static d(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/h0;
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/h0;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/h0;-><init>(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    return-object v0
.end method

.method static e(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/h0$a;->a:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/s;->w(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/h0$a;->c:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/s;->w(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->S(I)I

    move-result p1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h0;->a:Landroidx/datastore/preferences/protobuf/h0$a;

    invoke-static {v0, p2, p3}, Landroidx/datastore/preferences/protobuf/h0;->b(Landroidx/datastore/preferences/protobuf/h0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->C(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method c()Landroidx/datastore/preferences/protobuf/h0$a;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h0;->a:Landroidx/datastore/preferences/protobuf/h0$a;

    return-object v0
.end method
