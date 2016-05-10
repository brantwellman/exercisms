namespace SumOfMultiples

type SumOfMultiples(multiples : int list) =
    let _multiples = multiples

    let _GetSum(multiple : int, n : int) : int list =
        [1..n] |> List.map (fun i -> i * multiple)

    let _GetMultiples(multiple : int, num : int) : int list =
        match (num / multiple) with
        | 0 -> [0]
        | value ->
            if(num % multiple <> 0) then _GetSum(multiple, value)
            else _GetSum(multiple, value - 1)

    new() = SumOfMultiples([3; 5;])

    member this.To(num : int) : int =
        _multiples
            |> List.map (fun multiple -> _GetMultiples(multiple, num))
            |> List.collect id
            |> List.distinct
            |> List.sum