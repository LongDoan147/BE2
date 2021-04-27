<form action="photos" method="post">
@csrf
    <button type="submit">Store</button>
</form>
<form action="photos" method="get">
    <button type="submit">Index</button>
</form>
<form action="photos/1" method="post">
@csrf
@method('DELETE')
    <button type="submit">Delete</button>
</form>
<form action="photos/1" method="post">
@csrf
@method('PUT')
    <button type="submit">Update</button>
</form>
<form action="photos/1" method="get">
    <button type="submit">Show</button>
</form>
<form action="photos/1/edit" method="get">
    <button type="submit">Edit</button>
</form>
<form action="photos/create" method="get">
    <button type="submit">Creates</button>
</form>