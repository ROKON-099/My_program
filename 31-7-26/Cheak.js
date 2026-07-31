function cheacknumber (num)
{
    if (num>0)
    {
        return Positive;
    }

    else if (num <0)
    {
        return Negative;
    }
    else {
        return Zero;

    }
}

console.log (cheacknumber(10));
console.log (cheacknumber(-15));
console.log (cheacknumber(0));

