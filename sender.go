package metrics

// Sender is responsible for sending the metrics
type Sender struct {
}

// Send sends the metrics
func (s *Sender) Send(e Event) error {
	return nil
}
