.class public final Lcom/google/protobuf/s$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private cachedSizeField:Ljava/lang/reflect/Field;

.field private enforceUtf8:Z

.field private enumVerifier:Lcom/google/protobuf/y$e;

.field private field:Ljava/lang/reflect/Field;

.field private fieldNumber:I

.field private mapDefaultEntry:Ljava/lang/Object;

.field private oneof:Lcom/google/protobuf/a1;

.field private oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private presenceField:Ljava/lang/reflect/Field;

.field private presenceMask:I

.field private required:Z

.field private type:Lcom/google/protobuf/FieldType;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/s$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/s$b;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/s;
    .locals 8

    iget-object v2, p0, Lcom/google/protobuf/s$b;->oneof:Lcom/google/protobuf/a1;

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/google/protobuf/s$b;->fieldNumber:I

    iget-object v1, p0, Lcom/google/protobuf/s$b;->type:Lcom/google/protobuf/FieldType;

    iget-object v3, p0, Lcom/google/protobuf/s$b;->oneofStoredType:Ljava/lang/Class;

    iget-boolean v4, p0, Lcom/google/protobuf/s$b;->enforceUtf8:Z

    iget-object v5, p0, Lcom/google/protobuf/s$b;->enumVerifier:Lcom/google/protobuf/y$e;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/s;->forOneofMemberField(ILcom/google/protobuf/FieldType;Lcom/google/protobuf/a1;Ljava/lang/Class;ZLcom/google/protobuf/y$e;)Lcom/google/protobuf/s;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/s$b;->mapDefaultEntry:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/s$b;->field:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/s$b;->fieldNumber:I

    iget-object v3, p0, Lcom/google/protobuf/s$b;->enumVerifier:Lcom/google/protobuf/y$e;

    invoke-static {v1, v2, v0, v3}, Lcom/google/protobuf/s;->forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/y$e;)Lcom/google/protobuf/s;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/s$b;->presenceField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_3

    iget-boolean v0, p0, Lcom/google/protobuf/s$b;->required:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/s$b;->field:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/s$b;->fieldNumber:I

    iget-object v3, p0, Lcom/google/protobuf/s$b;->type:Lcom/google/protobuf/FieldType;

    iget v5, p0, Lcom/google/protobuf/s$b;->presenceMask:I

    iget-boolean v6, p0, Lcom/google/protobuf/s$b;->enforceUtf8:Z

    iget-object v7, p0, Lcom/google/protobuf/s$b;->enumVerifier:Lcom/google/protobuf/y$e;

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/s;->forLegacyRequiredField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/google/protobuf/y$e;)Lcom/google/protobuf/s;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/s$b;->field:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/s$b;->fieldNumber:I

    iget-object v3, p0, Lcom/google/protobuf/s$b;->type:Lcom/google/protobuf/FieldType;

    iget v5, p0, Lcom/google/protobuf/s$b;->presenceMask:I

    iget-boolean v6, p0, Lcom/google/protobuf/s$b;->enforceUtf8:Z

    iget-object v7, p0, Lcom/google/protobuf/s$b;->enumVerifier:Lcom/google/protobuf/y$e;

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/s;->forExplicitPresenceField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/google/protobuf/y$e;)Lcom/google/protobuf/s;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/s$b;->enumVerifier:Lcom/google/protobuf/y$e;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/protobuf/s$b;->cachedSizeField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/s$b;->field:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/s$b;->fieldNumber:I

    iget-object v3, p0, Lcom/google/protobuf/s$b;->type:Lcom/google/protobuf/FieldType;

    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/s;->forFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Lcom/google/protobuf/y$e;)Lcom/google/protobuf/s;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/s$b;->field:Ljava/lang/reflect/Field;

    iget v3, p0, Lcom/google/protobuf/s$b;->fieldNumber:I

    iget-object v4, p0, Lcom/google/protobuf/s$b;->type:Lcom/google/protobuf/FieldType;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/protobuf/s;->forPackedFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Lcom/google/protobuf/y$e;Ljava/lang/reflect/Field;)Lcom/google/protobuf/s;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/s$b;->cachedSizeField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/s$b;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/google/protobuf/s$b;->fieldNumber:I

    iget-object v2, p0, Lcom/google/protobuf/s$b;->type:Lcom/google/protobuf/FieldType;

    iget-boolean v3, p0, Lcom/google/protobuf/s$b;->enforceUtf8:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/s;->forField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Z)Lcom/google/protobuf/s;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/s$b;->field:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/s$b;->fieldNumber:I

    iget-object v3, p0, Lcom/google/protobuf/s$b;->type:Lcom/google/protobuf/FieldType;

    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/s;->forPackedField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/google/protobuf/s;

    move-result-object v0

    return-object v0
.end method

.method public withCachedSizeField(Ljava/lang/reflect/Field;)Lcom/google/protobuf/s$b;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/s$b;->cachedSizeField:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public withEnforceUtf8(Z)Lcom/google/protobuf/s$b;
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/s$b;->enforceUtf8:Z

    return-object p0
.end method

.method public withEnumVerifier(Lcom/google/protobuf/y$e;)Lcom/google/protobuf/s$b;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/s$b;->enumVerifier:Lcom/google/protobuf/y$e;

    return-object p0
.end method

.method public withField(Ljava/lang/reflect/Field;)Lcom/google/protobuf/s$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s$b;->oneof:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/s$b;->field:Ljava/lang/reflect/Field;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set field when building a oneof."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withFieldNumber(I)Lcom/google/protobuf/s$b;
    .locals 0

    iput p1, p0, Lcom/google/protobuf/s$b;->fieldNumber:I

    return-object p0
.end method

.method public withMapDefaultEntry(Ljava/lang/Object;)Lcom/google/protobuf/s$b;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/s$b;->mapDefaultEntry:Ljava/lang/Object;

    return-object p0
.end method

.method public withOneof(Lcom/google/protobuf/a1;Ljava/lang/Class;)Lcom/google/protobuf/s$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/a1;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/s$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/s$b;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/s$b;->presenceField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/s$b;->oneof:Lcom/google/protobuf/a1;

    iput-object p2, p0, Lcom/google/protobuf/s$b;->oneofStoredType:Ljava/lang/Class;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set oneof when field or presenceField have been provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withPresence(Ljava/lang/reflect/Field;I)Lcom/google/protobuf/s$b;
    .locals 1

    const-string v0, "presenceField"

    invoke-static {p1, v0}, Lcom/google/protobuf/y;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    iput-object p1, p0, Lcom/google/protobuf/s$b;->presenceField:Ljava/lang/reflect/Field;

    iput p2, p0, Lcom/google/protobuf/s$b;->presenceMask:I

    return-object p0
.end method

.method public withRequired(Z)Lcom/google/protobuf/s$b;
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/s$b;->required:Z

    return-object p0
.end method

.method public withType(Lcom/google/protobuf/FieldType;)Lcom/google/protobuf/s$b;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/s$b;->type:Lcom/google/protobuf/FieldType;

    return-object p0
.end method
